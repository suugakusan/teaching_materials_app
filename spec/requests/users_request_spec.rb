require 'rails_helper'

RSpec.describe "Users", type: :request do
  
  describe "GET #new" do
    subject { get(signup_path) }
    it "リクエストが成功する" do
      subject
      expect(response).to have_http_status(:ok)
    end
  end
  
  describe "GET #show" do
    subject { get(user_path(user_id)) }
    context "ユーザーが存在するとき" do
      before do
         post login_path, params: { session: {
        email: user.email,
        password: user.password,
         } }
      end
      
      let(:user) { create(:user) }
      let(:user_id) { user.id }
      
      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(:ok)
      end
      
      it "name が表示されている" do
        subject
        expect(response.body).to include user.name
      end
    end
  end
  
  describe "POST #create" do
    subject { post(users_path, params: params) }
    context "パラメータが正常なとき" do
      let(:params) { { user: attributes_for(:user) } }

      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(302)
      end

      it "ユーザーが保存される" do
        expect { subject }.to change { User.count }.by(1)
      end

      it "詳細ページにリダイレクトされる" do
        subject
        expect(response).to redirect_to User.last
      end
    end

    context "パラメータが異常なとき" do
      let(:params) { { user: attributes_for(:user, :invalid) } }

      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(200)
      end

      it "ユーザーが保存されない" do
        expect { subject }.not_to change(User, :count)
      end

      it "新規投稿ページがレンダリングされる" do
        subject
        expect(response.body).to include "新規登録"
      end
    end
  end
end
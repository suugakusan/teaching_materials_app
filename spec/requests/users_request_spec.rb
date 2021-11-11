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
end
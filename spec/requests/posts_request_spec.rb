require 'rails_helper'

RSpec.describe "Posts", type: :request do
  before do
    post login_path, params: { session: {
    email: user.email,
    password: user.password,
     } }
  end
  let(:user) { create(:user) }
  let(:user_id) { user.id }
  describe "GET #new" do
    subject { get(new_post_path) }
    it "リクエストが成功する" do
      subject
      expect(response).to have_http_status(:ok)
    end
  end
  
  describe "GET #show" do
    subject { get(post_path(post_id)) }
    context "投稿が存在するとき" do
      let!(:new_post) { create(:post, user: user)}
      let(:post_id) { new_post.id }
      
      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(:ok)
      end
      
      it "投稿したuserのname が表示されている" do
        subject
        expect(response.body).to include new_post.user.name
      end
      
      it "投稿した内容が表示されている" do
        subject
        expect(response.body).to include new_post.content
      end
    end
  end
end
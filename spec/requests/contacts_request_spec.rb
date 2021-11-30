require 'rails_helper'

RSpec.describe "Contacts", type: :request do
  before do
    post login_path, params: { session: {
    email: user.email,
    password: user.password,
     } }
  end
  let(:user) { create(:user) }
  let(:user_id) { user.id }
  
  describe "GET #index" do
    subject { get(contacts_path) }
      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(:ok)
      end
  end
end
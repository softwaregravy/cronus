# frozen_string_literal: true

require "rails_helper"

RSpec.describe "MainPages", type: :request do
  describe "GET /index" do
    context "when logged in" do
      it "returns http success" do
        user = create(:user)
        sign_in user
        get "/main_page/index"
        expect(response).to have_http_status(:success)
      end
    end

    context "when not logged in" do
      it "returns http redirect" do
        get "/main_page/index"
        expect(response).to have_http_status(:redirect)
      end
    end
  end
end

require 'spec_helper'

module RakeDashboard
  RSpec.describe TasksController, type: :controller do

    routes { RakeDashboard::Engine.routes }

    describe "GET #index" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET #create" do
      it "returns http success" do
        post :create, task: :secret
        expect(response).to have_http_status(:success)
      end
    end

  end
end

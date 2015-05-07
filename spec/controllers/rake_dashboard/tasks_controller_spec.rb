require 'spec_helper'
require 'rake'

module RakeDashboard
  RSpec.describe TasksController, type: :controller do

    routes { RakeDashboard::Engine.routes }

    before do
      Dummy::Application.load_tasks
    end

    let(:tasks) { Rake::Task.tasks }

    describe "GET #index" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end

      it "should have tasks assigned from the configuration" do
        RakeDashboard.tasks = tasks
        get :index
        expect(assigns(:tasks)).to eql(tasks)
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

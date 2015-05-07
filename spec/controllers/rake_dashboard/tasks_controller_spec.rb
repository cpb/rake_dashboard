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

    describe "POST #create" do
      let(:task) { double("task") }
      before do
        allow(task).to receive(:invoke) { puts "invoked!" }
      end

      it "returns http success" do
        post :create, task: :secret
        expect(response).to have_http_status(:success)
      end

      it "should invoke the passed rake task" do
        expect(Rake::Task).to receive(:[]).with("secret").and_return(task)

        post :create, task: :secret
        expect(response).to have_http_status(:success)
      end

      it "should respond with the task ouput" do
        expect(Rake::Task).to receive(:[]).with("secret").and_return(task)

        post :create, task: :secret
        expect(response.body).to eql("invoked!\n")
      end
    end

  end
end

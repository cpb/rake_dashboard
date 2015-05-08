require_dependency "rake_dashboard/application_controller"

module RakeDashboard
  class TasksController < ApplicationController
    def index
      @tasks = RakeDashboard.tasks
    end

    def create
      render text: capture(:stdout) { Rake::Task[params[:task]].invoke }
    end
  end
end

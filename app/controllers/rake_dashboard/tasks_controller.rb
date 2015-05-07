require_dependency "rake_dashboard/application_controller"

module RakeDashboard
  class TasksController < ApplicationController
    def index
      @tasks = RakeDashboard.tasks
    end

    def create
    end
  end
end

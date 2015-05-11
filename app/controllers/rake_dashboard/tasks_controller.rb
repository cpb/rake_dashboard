require_dependency "rake_dashboard/application_controller"

module RakeDashboard
  class TasksController < ApplicationController
    def index
      @tasks = RakeDashboard.tasks
    end

    def create
      @rake_stream = capture(:stdout) { Rake::Task[params[:task]].invoke }

      render inline: "<pre><%= @rake_stream %></pre>"
    end
  end
end

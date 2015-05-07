require 'spec_helper'

RSpec.describe "rake_dashboard/tasks/index.html.erb", type: :view do
  include RSpecHtmlMatchers

  before do
    view.extend RakeDashboard::Engine.routes.url_helpers
  end

  before do
    Dummy::Application.load_tasks
  end

  let(:tasks) { Rake::Task.tasks }

  before do
    assign(:tasks, tasks)
  end

  it "should render tasks in a list" do
    render

    expect(rendered).to have_tag("ul") do
      with_tag "li", count: tasks.length

      tasks.each do |task|
        with_tag "li a", text: task.name
      end
    end
  end
end

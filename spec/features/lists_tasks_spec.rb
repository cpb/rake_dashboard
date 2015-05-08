require 'spec_helper'

feature "RakeDashboard lists rake tasks for one-click invocation" do

  scenario "Default rails tasks" do
    visit "/rake_dashboard/tasks"
    expect(page).to have_content "db:migrate"
    expect(page).to have_content "db:seed"
  end
end

require 'spec_helper'

feature "RakeDashboard lists rake tasks for on-click invocation" do

  before do
    Capybara.javascript_driver = :poltergeist
  end

  scenario "Invoking a default rails task" do
    begin
      visit "/rake_dashboard/tasks"
      expect(page).to have_content "secret"
      click_on "secret"
      expect(page.text.length).to eql(128)
    end
  end
end

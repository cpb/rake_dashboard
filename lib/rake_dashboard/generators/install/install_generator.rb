module RakeDashboard
  class InstallGenerator < Rails::Generators::Base
    argument :mount_point, type: :string, default: "/rake", banner: "mount point for RakeDashboard"

    source_root File.expand_path('../templates', __FILE__)

    def create_initializer_file
      create_file "config/initializers/rake_dashboard.rb", "Rails.application.load_tasks\nRakeDashboard.tasks = Rake::Task.tasks"

    end

    def add_mountpoint_to_routes
      route "mount RakeDashboard::Engine => '#{mount_point}'"
    end
  end
end

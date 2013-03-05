require "postgres_rake/version"
require "rails"

if defined? Rails
  module PostgresRake
    class PostgresRakeRailtie < Rails::Railties
      rake_tasks do
        load 'postgres_rake/postgres_rake.rake'
      end
    end
  end
end
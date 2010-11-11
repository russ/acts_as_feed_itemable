# require 'rails/generators/base'
# require "rails/generators/active_record"

module ActsAsFeedItemable
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path(File.join(File.dirname(__FILE__), "templates"))

      def self.next_migration_number(dirname)
        if ActiveRecord::Base.timestamped_migrations
          Time.now.utc.strftime("%Y%m%d%H%M%S")
        else
          "%.3d" % (current_migration_number(dirname) + 1)
        end
      end

      def add_migration
        migration_template("migration.rb", "db/migrate/create_feed_items")
      end
    end
  end
end

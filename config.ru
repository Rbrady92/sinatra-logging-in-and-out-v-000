require './config/environment'

if ActiveRecord::Base.connection.migration_keys.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end
# causing errors when present here and in spec helper

run ApplicationController

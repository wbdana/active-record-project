require_relative "./connection_adapter.rb"

DBName = "library"

DBRegistry ||= OpenStruct.new(test: ConnectionAdapter.new("db/#{DBNAME}-test.db"),
  development: ConnectionAdapter.new("db/#{DBNAME}-development.db"),
  production: ConnectionAdapter.new("db/#{DBNAME}-production.db")
  )

#adjust file paths to move to db folder? but only if broken...apparently this works

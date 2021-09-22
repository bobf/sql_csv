# frozen_string_literal: true

require 'sql_csv/version'

require 'active_record'
require 'csv'

# Create a CSV export from an SQL query.
module SqlCsv
  class Error < StandardError; end

  def self.export(query)
    ActiveRecord::Base.establish_connection
    rows = ActiveRecord::Base.connection.execute(query)
    csv = CSV.new($stdout)
    csv << rows.fields
    rows.each { |row| csv << row }
    csv.close
  end
end

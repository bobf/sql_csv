# frozen_string_literal: true

require 'sql_csv/version'

require 'csv'
require 'logger'

require 'active_record'

# Create a CSV export from an SQL query.
module SqlCsv
  class Error < StandardError; end

  def self.export(query)
    ActiveRecord::Base.establish_connection
    rows = ActiveRecord::Base.connection.execute(query)
    csv = CSV.new($stdout)
    csv << rows.fields
    rows.map { |row| row.is_a?(Hash) ? row.values : row }.each do |row|
      csv << row.map { |item| item.is_a?(String) ? item : item.to_s }
    end
    csv.close
  end
end

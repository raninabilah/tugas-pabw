class CsvImportUsersService
require 'csv'

def call(file)
  file = File.open(file)
  csv = CSV.parse(file, headers: true, liberal_parsing: true)
  csv.each do |row|
        user_hash = {}
        user_hash[:name] = row['Name']
        user_hash[:price] = row['Price']
        User.find_or_create_by!(user_hash)
        # binding.b
        # p row
      end
    end
  end
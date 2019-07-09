# frozen_string_literal: true

require 'yaml'
require_relative './entities/library'
require_relative './tasks/seed'
require_relative './tasks/fake-data'
require_relative './tasks/database'


if File.exist?('lib_db.yaml')
  library = YAML.load_file('lib_db.yaml', {})
else
  library = Library.new(readers: readers, orders: orders, authors: authors, books: books)
  library.load_data
  lib_file = File.new('lib_db.yaml', 'w')
  lib_file.write(library.to_yaml)
  library.save_data
  lib_file.close
end

library.show

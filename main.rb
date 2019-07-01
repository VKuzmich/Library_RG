# frozen_string_literal: true

require 'yaml'
require_relative './entities/library'
require_relative './tasks/seed'
require_relative './tasks/fake-data'
require_relative './tasks/database'


if File.exist?('lib_db.yaml')
  library = YAML.load_file('lib_db.yaml', {})
else
  library = Library.new(readers: reader, orders: order, authors: author, books: book)
  library.BooksLibrary
  lib_file = File.new('lib_db.yaml', 'w')
  lib_file.write(library.to_yaml)
  lib_file.close
end

library.show

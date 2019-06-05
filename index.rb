# frozen_string_literal: true

require 'yaml'
require './entities/library'
require './tasks/seed'

if File.exist?('lib_db.yaml')
  library = YAML.load_file('lib_db.yaml', {})
else
  library = Library.new(readers, orders, authors, books)
  library.PopularLibrary
  lib_file = File.new('lib_db.yaml', 'w')
  lib_file.write(lib.to_yaml)
  lib_file.close
end

library.show

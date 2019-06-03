# frozen_string_literal: true

require 'yaml'
require './entities/library'
require './seed'

if File.exist?('lib_db.yaml')
  lib = YAML.load(File.read('lib_db.yaml'))
else
  lib = Library.new(readers, orders, authors, books)
  lib.PopularLibrary
  lib_file = File.new('lib_db.yaml', 'w')
  lib_file.write(lib.to_yaml)
  lib_file.close
end

lib.show

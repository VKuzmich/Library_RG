# frozen_string_literal: true

require 'yaml'
require './entities/library'
require './seed'

if File.exist?('lib_db.yaml')
  lib = YAML.load(File.read('lib_db.yaml'))
else
  lib = Library.new
  lib.PopularLibrary
  lib_file = File.new('lib_db.yaml', 'w')
  lib_file.write(lib.to_yaml)
  lib_file.close
end

lib.top_reader
puts "\n"
lib.most_popular_book
puts "\n"
lib.count_readers_of_popular_book

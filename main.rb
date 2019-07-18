# frozen_string_literal: true

require_relative 'entities/library'



library = Library.new
library.generate_data
library.load_data
library.save_data
library.delete_data
library.show
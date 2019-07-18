# frozen_string_literal: true

require_relative 'entities/library'

library = Library.new
library.load_data
# library.save_data
library.show
# library.delete_data



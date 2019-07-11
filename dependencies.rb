# require 'yaml'
# require 'ffaker'
#
# require_relative 'entities/author'
# require_relative 'entities/book'
# require_relative 'entities/order'
# require_relative 'entities/reader'
# require_relative 'entities/library'
#
# require_relative 'tasks/database'
# require_relative 'tasks/errors/errors'
# require_relative 'tasks/errors/field_error'
# require_relative 'tasks/errors/wrong_number_error'

require 'yaml'
require 'ffaker'

require_relative 'entities/author'
require_relative 'entities/book'
require_relative 'entities/order'
require_relative 'entities/reader'

require_relative 'tasks/database'
require_relative 'tasks/errors/errors'
require_relative 'tasks/errors/field_error'
# require_relative 'tasks/fake-data'
require_relative 'tasks/errors/wrong_number_error'
require_relative 'tasks/statistics'
require_relative 'tasks/validate'

# frozen_string_literal: true

require 'yaml'
require 'ffaker'
require 'date'

require_relative 'tasks/validate'

require_relative 'entities/author'
require_relative 'entities/book'
require_relative 'entities/order'
require_relative 'entities/reader'
require_relative 'entities/library'

require_relative 'tasks/database'
require_relative 'tasks/generate_fakedata'
require_relative 'tasks/statistics'

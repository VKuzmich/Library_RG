# frozen_string_literal: true

require 'ffaker'
require 'byebug'

require_relative '../tasks/validate'

# authors of books
class Author
  include Validate
  attr_reader :name, :biography

  def initialize(name:, biography:)
    validate name, biography

    @name = name
    @biography = biography
  end

  def to_s
    name
  end

  def validate(*params)
    params.each(&method(:check_empty_space))
  end
end

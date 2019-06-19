# frozen_string_literal: true

require 'ffaker'
require_relative '../tasks/validate'

# authors of books
class Author
  include Validate
  attr_reader :name, :biography

  def initialize(name)
    validate name, biography

    @name = name
    @biography = Faker::Lorem.paragraph
  end

  def to_s
    "#{name}, #{biography}"
  end

  def validate(*empty_field)
    empty_field.each(&method(:check_empty_space))
  end
end

# frozen_string_literal: true

require 'ffaker'
require_relative '../tasks/validate'

# authors of books
class Author
  include Validate
  attr_reader :name, :biography

  def initialize(name, biography)
    validate name, biography

    @name = name
    @biography = Faker::Lorem.paragraph
  end

  def to_s
    "#{name}, #{biography}"
  end

  def validate(*params)
    params.each(&:check_empty_space)
  end
end

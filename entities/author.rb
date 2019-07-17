# frozen_string_literal: true

require_relative '../tasks/validate'

# authors of books
class Author
  include Validate

  attr_reader :name, :biography

  def initialize(name:, biography: '')
    validate name, biography

    @name = name
    @biography = biography
  end

  def to_s
    "#{@name}. #{@biography}"
  end

  def validate(*params)
    check_empty_space(*params)
  end
end

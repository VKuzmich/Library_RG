# frozen_string_literal: true

require_relative '../tasks/validate'

# books to read
class Book
  include Validate
  attr_reader :title, :author

  def initialize(title:, author:)
    validate title, author

    @title = title
    @author = author
  end

  def to_s
    "#{title}, #{author}"
  end

  def validate(*empty_field)
    empty_field.each(&method(:check_empty_space))
  end
end

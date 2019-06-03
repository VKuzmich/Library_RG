# frozen_string_literal: true

require 'ffaker'
require './validate'

# books to read
class Book
  include Validate
  attr_reader :title, :author

  def initialize(title, author)
    validate title, author

    @title = Faker::Book.unique.title
    @author = Faker::Book.author
  end

  def to_s
    "#{title}, #{author}"
  end

  def validate(*string)
    string.each(&method(:check_empty_space))
  end
end

# frozen_string_literal: true

require 'faker'

# books to read
class Book
  attr_reader :title, :author

  def initialize
    @title = Faker::Book.unique.title
    @author = Faker::Book.author
  end

  def to_s
    "#{title}, #{author}"
  end
end

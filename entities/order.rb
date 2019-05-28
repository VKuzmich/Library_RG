# frozen_string_literal: true

require 'faker'

# orders of books
class Order
  attr_reader :book, :reader, :date

  def initialize(book, reader)
    @book = book
    @reader = reader
    @date = Faker::Date.backward(300)
  end

  def to_s
    "#{book}, #{reader}, #{date}"
  end
end

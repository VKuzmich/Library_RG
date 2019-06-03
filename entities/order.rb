# frozen_string_literal: true

require 'ffaker'
require './validate'

# orders of books
class Order
  include Validate
  attr_reader :book, :reader, :date

  def initialize(book, reader, date)
    validate book, reader, date

    @book = book
    @reader = reader
    @date = Faker::Date.backward(300)
  end

  def to_s
    "#{book}, #{reader}, #{date}"
  end

  def validate(*string)
    string.each(&method(:check_empty_space))
  end
end

# frozen_string_literal: true

require 'ffaker'
require './tasks/validate'

# orders of books
class Order
  include Validate
  attr_reader :book, :reader, :date

  def initialize(book, reader, date)
    validate date

    @book = book
    @reader = reader
    @date = Faker::Date.backward(300)
  end

  def validate(*date)
    date.each(&method(:check_dates))
  end
end

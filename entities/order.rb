# frozen_string_literal: true

require_relative '../tasks/validate'

# orders of books
class Order
  include Error
  attr_reader :book, :reader, :date

  def initialize(book:, reader:, date:)
    validate date

    @book = book
    @reader = reader
    @date = date
  end

  def validate(*date)
    date.(&method(:check_dates))
  end
end

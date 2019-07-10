# frozen_string_literal: true

require_relative '../dependencies'

# orders of books
class Order
  include Validate
  attr_accessor :book, :reader, :date

  def initialize(book:, reader:, date: Date.today)
    validate date

    @book = book
    @reader = reader
    @date = date
  end

  def to_s
    "#{@book}, #{@reader}, #{@date}"
  end

  def validate(date)
    instance?(Date, date)
  end
end

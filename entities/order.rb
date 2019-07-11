# frozen_string_literal: true

require_relative '../dependencies'
require 'date'

# orders of books
class Order
  include Validate
  attr_reader :book, :reader, :date

  def initialize(book:, reader:, date:)
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

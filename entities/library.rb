# frozen_string_literal: true

require_relative '../dependencies'
require_relative '../tasks/seed'

class Library
  attr_reader :readers, :orders, :authors, :books

  include Statistics

  def initialize(readers:, orders:, authors:, books:)
    @readers = readers
    @orders = orders
    @authors = authors
    @books = books
  end
end

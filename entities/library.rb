# frozen_string_literal: true

require_relative '../entities/book'
require_relative '../entities/reader'
require_relative '../entities/author'
require_relative '../entities/order'
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

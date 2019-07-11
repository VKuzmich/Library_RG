# frozen_string_literal: true

require_relative '../dependencies'

class Library
  attr_reader :readers, :orders, :authors, :books

  include Database
  include Statistics

  def initialize(readers:, orders:, authors:, books:)
    @readers = readers
    @orders = orders
    @authors = authors
    @books = books
  end
end

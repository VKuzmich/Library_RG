# frozen_string_literal: true

require './entities/book'
require './entities/reader'
require './entities/author'
require './entities/order.rb'
require './seed'

# library information
class Library
  attr_reader :readers, :orders, :authors, :books

  include SeedData

  def initialize
    @readers = []
    @orders = []
    @authors = []
    @books = []
  end

  # comment
  class PopularLibrary
    def book_list
      30.times { @books << Book.new }
    end

    def book_readers
      25.times { @readers << Reader.new }
      @books.each do |book|
        @authors << Author.new(book.author)
        unless @authors.include?(book.author)
        end
      end
    end

    def book_orders
      50.times do
        @orders << Order.new(@books.sample.title,
                             @readers.sample.name)
      end
    end
  end
end

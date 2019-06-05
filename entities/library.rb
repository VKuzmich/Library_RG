# frozen_string_literal: true

require './entities/book'
require './entities/reader'
require './entities/author'
require './entities/order.rb'
require './tasks/seed'

# library information
class Library
  attr_reader :readers, :orders, :authors, :books

  include SeedData

  def initialize(readers, orders, authors, books)
    @readers = readers
    @orders = orders
    @authors = authors
    @books = books
  end

  # comment
  class PopularLibrary
    def book_list
      30.times { @books << Book.new(title, author) }
    end

    def book_readers
      25.times { @readers << Reader.new(name, email, city, street, house) }
      @books.each do |book| @authors << Author.new(book.author, book.title)
        unless @authors.include?(book.author)
        end
      end
    end

    def book_orders
      50.times do
        @orders << Order.new(@books.sample.title,
                             @readers.sample.name,
                             @date.sample.date)
      end
    end
  end
end

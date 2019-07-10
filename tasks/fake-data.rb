# frozen_string_literal: true

require_relative '../entities/library'
require 'ffaker'

module FakeData

LIMIT = 25

  class BooksLibrary
    def book_list
      @books = Array.new(rand(5..LIMIT)) do
        Book.new(
            title: FFaker::Book.title,
            author: @authors.sample)
      end

    end

    def book_readers
      @readers = Array.new(rand(5..LIMIT)) do
        Reader.new(
            name: FFaker::Name.name,
            email: FFaker::Internet.email,
            city: FFaker::Address.city,
            street: FFaker::Address.street_name,
            house: FFaker::rand(1..100)
        )
      end

      @books.each do |book| @authors = Array.new(rand(5..LIMIT)) do
        Author.new(
            name: FFaker::Name.name,
            biography: 'Author biography'
        )
        end
        unless @authors.include?(book.author)
        end
      end
    end

    def book_orders
      Array.new(rand(5..LIMIT)) do
        Order.new(
            book: @books.sample,
            reader: @readers.sample,
            date: Date.today
        )
      end
    end
  end
end

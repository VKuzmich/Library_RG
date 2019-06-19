# frozen_string_literal: true

require_relative '../entities/library'
require 'faker'

module FakeData

LIMIT = 25

  class BooksLibrary
    def book_list
      @books = Array.new(rand(5..LIMIT)) do
        Book.new(
            title: Faker::Book.title,
            author: @authors.sample)
      end

    end

    def book_readers
      @readers = Array.new(rand(5..LIMIT)) do
        Reader.new(
            name: Faker::Name.name,
            email: Faker::Internet.email,
            city: Faker::Address.city,
            street: Faker::Address.street_name,
            house: Faker::rand(1..100)
        )
      end

      @books.each do |book| @authors = Array.new(rand(5..LIMIT)) do
        Author.new(
            name: Faker::Name.name,
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

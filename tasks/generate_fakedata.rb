# frozen_string_literal: true

# module fake data generator
module GenerateFakeData
  class << self
    def fake_data
      {
        authors: authors,
        books: books,
        readers: readers,
        orders: orders
      }
    end

    private

    def authors
      @authors = Array.new(25) do
        Author.new(
          name: FFaker::Name.name,
          biography: 'Author Biography'
        )
      end
    end

    def books
      @books = Array.new(25) do
        Book.new(
          title: FFaker::Book.title,
          author: @authors.sample
        )
      end
    end

    def readers
      @readers = Array.new(25) do
        Reader.new(
          name: FFaker::Name.name,
          email: FFaker::Internet.email,
          city: FFaker::Address.city,
          street: FFaker::Address.street_name,
          house: FFaker::Address.building_number.to_i
        )
      end
    end

    def orders
      @orders = Array.new(50) do
        Order.new(
          book: @books.sample,
          reader: @readers.sample,
          date: Date.today
        )
      end
    end
  end
end

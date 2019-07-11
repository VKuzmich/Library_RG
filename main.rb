# frozen_string_literal: true

require 'date'
require 'ffaker'
require_relative 'entities/author'
require_relative 'entities/book'
require_relative 'entities/order'
require_relative 'entities/reader'
require_relative 'entities/library'
require_relative 'tasks/database'

authors = 30.times.map{Author.new(name: FFaker::Name.name,
                                biography: FFaker::Lorem.paragraph)}
books = 30.times.map{ Book.new(title: FFaker::Book.title, author: authors) }
readers = 30.times.map{ Reader.new(name: FFaker::Name.name,
                                email: FFaker::Internet.email,
                                city: FFaker::Address.city,
                                street: FFaker::Address.street_name,
                                house: FFaker::rand(1..100)) }
orders = 30.times.map{ Order.new(book: books,
                              reader: readers,
                              date: Date.today) }

library = Library.new(authors: authors, books: books, readers: readers, orders: orders)

library.load_data
library.save_data
library.show
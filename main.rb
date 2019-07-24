# frozen_string_literal: true

require_relative 'entities/library'

library = Library.new
library.delete_data

library.add_entity(Author.new(
                     name: FFaker::Name.name,
                     biography: FFaker::Lorem.paragraph
                   ))
library.add_entity(Book.new(
                     title: FFaker::Book.title,
                     author: @authors
                   ))
library.add_entity(Reader.new(
                     name: FFaker::Name.name,
                     email: FFaker::Internet.email,
                     city: FFaker::Address.city,
                     street: FFaker::Address.street_name,
                     house: FFaker::Address.building_number.to_i
                   ))
library.add_entity(Order.new(
                     book: @books,
                     reader: @readers,
                     date: Date.today
                   ))
library.load_data
library.save_data
library.show

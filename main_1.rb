# frozen_string_literal: true

require_relative 'dependencies'


authors = 30.times { Author.new(name: FFaker::Name.name,
                                biography: FFaker::Lorem.paragraph) }
books = 30.times { Book.new(title: FFaker::Book.title, author: authors) }
readers = 30.times { Reader.new(name: FFaker::Name.name,
                                email: FFaker::Internet.email,
                                city: FFaker::Address.city,
                                street: FFaker::Address.street_name,
                                house: FFaker::rand(1..100)) }
orders = 30.times { Order.new(book: books,
                              reader: readers,
                              date: Date.today) }

library = Library.new(authors: authors, books: books, readers: readers, orders: orders)
library.load_data
library.save_data
library.show



# if File.exist?('lib_db.yaml')
#   library = YAML.load_file('lib_db.yaml', {})
# else
#   library = Library.new(authors: authors, books: books, readers: readers, orders: orders)
#   library.load_data
#   library.save_data
# end
#
# library.show
# #
# # library.load_data
# # lib_file = File.new('lib_db.yaml', 'w')
# # lib_file.write(library.to_yaml)
# # library.save_data
# # lib_file.close
# #
# #
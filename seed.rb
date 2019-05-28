# frozen_string_literal: true

# statistics
module SeedData
  def find_most_popular(item)
    popular_items = []
    @orders.each do |order|
      popular_items << order.send(item)
    end
    items_count = Hash.new(0)
    popular_items.each { |popular_item| items_count[popular_item] += 1 }
    items_count.sort_by { |_name, count| count }
  end

  def top_reader
    sorted_readers = find_most_popular('reader')
    puts "#{sorted_readers[-1][0]} is the top reader."
    puts "He has ordered #{sorted_readers[-1][1]} books during the last year"
  end

  def most_popular_book
    sorted_books = find_most_popular('book')
    puts "\"#{sorted_books[-1][0]}\" is the most popular book in the Library."
    puts "It was ordered #{sorted_books[-1][1]} times during the last year"
  end

  def count_readers_of_popular_book
    one_of_most_popular_books = find_most_popular('book').slice(-3, 3).sample
    uniq_readers = []
    @orders.each do |order|
      uniq_readers << order.reader if order.book == one_of_most_popular_books[0]
    end
    uniq_readers.uniq!
    puts "\"#{one_of_most_popular_books[0]}\" is one of 3 most popular books."
    puts "It was ordered by #{uniq_readers.size} people during the last year"
  end
end

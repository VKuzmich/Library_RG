# frozen_string_literal: true

# statistics
module SeedData
  def show
    puts <<-ENDOFSTRING
        Top Reader: #{top_reader}
        Most Popular Book: #{top_books}
        Number of Readers of the Most Popular Books: #{count_readers_of_popular_book}
    ENDOFSTRING
  end

  def find_most_popular(item, entity_name)
    result = @orders
                 .group_by(&entity_name)
                 .max_by(item) { |_entity, orders| orders.size }
                 .map(&:first)

    item == 1 ? result.first : result
  end

  def top_reader(item: 1)
    find_most_popular item, :reader
  end

  def top_books(item: 1)
    find_most_popular item, :book
  end

  def count_readers_of_popular_book(item: 3)
    books = find_most_popular item, :book
    @orders.select { |order| books.include? order.book }.uniq(&:reader).size
  end
end

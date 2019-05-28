# frozen_string_literal: true

require 'faker'

# authors of books
class Author
  attr_reader :name, :biography

  def initialize(name)
    @name = name
    @biography = Faker::Lorem.paragraph
  end

  def to_s
    "#{name}, #{biography}"
  end
end

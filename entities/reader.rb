# frozen_string_literal: true

require 'ffaker'
require './validate'

# Readers' information
class Reader
  attr_reader :name, :email, :city, :street, :house

  def initialize(name, email, city, street, house)
    validate name, email, city, street, house

    @name = Faker::Name.unique.name
    @email = Faker::Internet.unique.email
    @city = Faker::Address.city
    @street = Faker::Address.street_name
    @house = Faker::Address.building_number
  end

  def to_s
    "#{name}, #{email}, #{city}, #{street}. #{house}"
  end

  def validate(*string)
    string.each(&method(:check_empty_space))
  end
end

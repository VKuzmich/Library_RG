# frozen_string_literal: true

require 'faker'

# Readers' information
class Reader
  attr_reader :name, :email, :city, :street, :house

  def initialize
    @name = Faker::Name.unique.name
    @email = Faker::Internet.unique.email
    @city = Faker::Address.city
    @street = Faker::Address.street_name
    @house = Faker::Address.building_number
  end

  def to_s
    "#{name}, #{email}, #{city}, #{street}. #{house}"
  end
end

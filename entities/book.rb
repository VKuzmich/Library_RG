# frozen_string_literal: true

require_relative '../dependencies'

class Book
  include Validate
  attr_reader :title, :author

  def initialize(title:, author:)
    validate title, author

    @title = title
    @author = author
  end

  def to_s
    "#{@title}: #{@author}"
  end

  def adding_entity
    add_entity
  end

  private

  def validate(*params)
    check_empty_space(params)
  end
end

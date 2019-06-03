# frozen_string_literal: true

# module errors validating
module Validate
  # validate for errors
  class EmptyStringError < StandardError
    def initialize
      super('it cannot be empty')
    end
  end

  def check_emptiness(string)
    raise EmptyStringError if string.empty?
  end
end

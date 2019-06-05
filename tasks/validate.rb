# frozen_string_literal: true

# module errors validating
module Validate
  # validate for errors
  class FieldError < StandardError
    def initialize
      super('it cannot be empty')
    end
  end

  class WrongNumber < StandardError
    def initialize
      super('not a number or negative!')
    end
  end

  def check_empty_space(empty_field)
    raise FieldError if empty_field.empty?
  end

  def check_dates(date)
    raise WrongNumber unless date.positive?
  end
end

# frozen_string_literal: true
require_relative '../tasks/errors/errors'

# module validating

module Validate
  include Errors

  def check_empty_space(*params)
    raise FieldError if params.empty?
  end

  def check_dates(date)
    raise WrongNumber unless date.positive?
  end
end

# frozen_string_literal: true
require_relative '../errors/field_error'
require_relative '../../tasks/errors/wrong_number_error'

module Errors
  class WrongClass < StandardError
    def initialize
      super('Wrong class!')
    end
  end
  WrongNumber.new()
  FieldError.new()

end

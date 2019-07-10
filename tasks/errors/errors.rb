# frozen_string_literal: true
require_relative '../errors/field_error'
require_relative '../../tasks/errors/wrong_number_error'

module Errors

  WrongNumber.new()
  FieldError.new()

  class WrongClassError < StandardError
    def initialize
      super('Wrong class!')
    end
  end

end

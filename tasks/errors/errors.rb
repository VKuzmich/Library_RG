# frozen_string_literal: true
require_relative './field_error'
require_relative './wrong_number_error'

module Errors

  include WrongNumber
  include FieldError

end

# frozen_string_literal: true

class Calc < ApplicationRecord
  validates :number, uniqueness: true
  # create for compare creation of new Calc and existing Calc in rspec test
  self.primary_key = :number
end

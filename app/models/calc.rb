# frozen_string_literal: true

class Calc < ApplicationRecord
  include CalcHelper
  attr_accessor :num

  validates :number, presence: { message: 'не может быть пустым' }
  validates_numericality_of :number,
                            only_integer: true,
                            message: 'должно быть целым числом'
  validates_numericality_of :number,
                            greater_than_or_equal_to: 1,
                            message: 'должен быть больше или равен 1'
  validates_numericality_of :number,
                            less_than_or_equal_to: 100,
                            message: 'должно быть меньше или равен 100'

  validates :number, uniqueness: true
  # create for compare creation of new Calc and existing Calc in rspec test
  self.primary_key = :number

  def result
    @num = number.to_i
    @flag = true
    if Calc.find_by_number(@num).nil?
      @ordinary_result = automorf(@num)
      @squared_result = @ordinary_result.map { |number| number**2 }
      Calc.create!(number: @num, ordinary: @ordinary_result.to_json, squares: @squared_result.to_json)
    else
      calc = Calc.find_by_number(@num)
      @ordinary_result = JSON.parse(calc.ordinary)
      @squared_result = JSON.parse(calc.squares)
      @flag = false
    end
    Hash[@ordinary_result.zip @squared_result]
  end

  def added?
    @flag
  end
end

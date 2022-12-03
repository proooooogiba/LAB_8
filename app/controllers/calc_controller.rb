# frozen_string_literal: true

class CalcController < ApplicationController
  include ActiveModel::Serializers::Xml
  include CalcHelper

  after_action :check_database, only: :view

  def input; end

  def view
    @number = params['num'].to_i
    if Calc.find_by_number(@number).nil?
      @ordinary_result = automorf(@number)
      @squared_result = @ordinary_result.map { |number| number**2 }
      Calc.create!(number: @number, ordinary: @ordinary_result.to_json, squares: @squared_result.to_json)
    else
      calc = Calc.find_by_number(@number)
      @ordinary_result = JSON.parse(calc.ordinary)
      @squared_result = JSON.parse(calc.squares)
    end
  end

  def check_database
    calc = Calc.all.to_xml
    render xml: calc
  end
end

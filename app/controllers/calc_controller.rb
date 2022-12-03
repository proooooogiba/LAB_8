class CalcController < ApplicationController
  include CalcHelper
  
  before_action
  before_action :last_result, only: :view
  after_action :results_to_xml, only: :view

  def input
  end

  def view
    @number = params['num'].to_i
    if (Calc.find_by_number(@number).nil?)
      @ordinary_result = automorf(@number)
      @squared_result = automorf(@number).map { |number| number**2 }  
      Calc.create!(number: @number, ordinary: @ordinary_result.to_s, squares: @squared_result.to_s)
    else
      calc = Calc.find_by_number(@number)
      @ordinary_result = JSON.parse(calc.ordinary)
      @squared_result = JSON.parse(calc.squares)
    end
  end

  def last_result
    # @last_result = Calc.last
    # puts @last_result.to_xml
  end

  def results_to_xml
    puts @ordinary_result.to_xml
    puts @squared_result.to_xml  
  end

end

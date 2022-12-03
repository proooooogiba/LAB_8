# frozen_string_literal: true

class CalcController < ApplicationController
  include CalcHelper

  before_action :set_number, only: :view
  before_action :check_is_range_number, only: :view
  before_action :check_is_number, only: :view
  before_action :set_integer_number, only: :view
  before_action :info_of_request, only: :view

  def input; end

  def set_number
    @number = params[:num]
  end

  def set_integer_number
    @number = @number.to_i
  end

  def view
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

  def show_database
    respond_to do |format|
      format.html
      format.xml { render xml: Calc.all }
    end
  end

  private

  def info_of_request
    flash.now[:notice] = if Calc.find_by_number(@number).nil?
                           "Результаты вычислений для числа #{@number} были добавлены в базу данных"
                         else
                           "Результаты вычислений для числа #{@number} были взяты из базы данных"
                         end
  end

  def check_is_number
    flash[:alert] = "Вводимое значение должно быть числом, а не #{@number}" if @number.to_i.nil?
    redirect_to input_path unless flash.empty?
  end

  def check_is_range_number
    if @number.to_i < 1 || @number.to_i > 100
      flash[:alert] =
        "Вводимое значение должно быть в диапазоне от 1 до 100, а не #{@number}"
    end
    redirect_to input_path unless flash.empty?
  end
end

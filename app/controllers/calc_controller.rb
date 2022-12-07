# frozen_string_literal: true

class CalcController < ApplicationController

  def input; end

  def view
    @calculator = Calc.new(form_params)
    @hash = @calculator.result
  end

  def show_database
    respond_to do |format|
      format.html
      format.xml { render xml: Calc.all }
    end
  end

  private

  def form_params
    params.permit(:number)
  end

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

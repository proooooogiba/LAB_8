# frozen_string_literal: true

class CalcController < ApplicationController
  def input; end

  def view
    @calculator = Calc.new(form_params)
    @hash = @calculator.result
    flash_info_of_request
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

  def flash_info_of_request
    flash.now[:notice] = if @calculator.added?
                           "Результаты вычислений для числа #{@calculator.num} были добавлены в базу данных"
                         else
                           "Результаты вычислений для числа #{@calculator.num} были взяты из базы данных"
                         end
  end
end

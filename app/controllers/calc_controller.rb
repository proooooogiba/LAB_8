class CalcController < ApplicationController
  include CalcHelper  
  def input
  end

  def view
    @number = params['num'].to_i
    @result = automorf(@number)
  end
end

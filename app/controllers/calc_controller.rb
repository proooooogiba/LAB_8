class CalcController < ApplicationController
  include CalcHelper

  def input
  end

  def view
    @number = params['num'].to_i
    @result = automorf(@number)

    respond_to do |format|
      # format.html
      format.xml {render :xml => @result}
    end
  end
end

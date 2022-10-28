class CalcController < ApplicationController
  def input
    render layout: false
  end

  def view
    @number = params['num'].to_i
    @result = automorf(@number)

    # render 'view'
    respond_to do |format|
      format.html
      format.json do
        render json:
          {type: @result.class.to_s, value: @result}
      end
    end
  end

  private

  def automorf(n)
    arr = []
    (1..n).each { |i| if (i**2).to_s.end_with?(i.to_s) then arr.append(i) end }
    arr
  end
end

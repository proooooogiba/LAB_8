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
    arr = Array.new
    (1..n).each do |i|
        if (i == i**2 % 10 || i == i**2 % 100 || i == i**2 % 1000)
            arr.append(i)
        end
    end
    return arr
  end
end

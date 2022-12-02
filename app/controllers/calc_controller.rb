class CalcController < ApplicationController
  include ActiveModel::Serializers::Xml
  
  def input
  end

  def view
    @number = params['num'].to_i
    @result = automorf(@number)

    respond_to do |format|
      format.html
      format.xml {render :xml => @result}
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

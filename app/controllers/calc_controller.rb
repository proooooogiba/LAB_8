# frozen_string_literal: true
require 'nokogiri'

class CalcController < ApplicationController
  include CalcHelper

  def input; end

  def view
    @number = params['num'].to_i
    @result_ordinary = automorf(@number)
    @result_squared = @result_ordinary.map { |number| number**2 }
    @result = []
    @result_ordinary.each_with_index do |input, index|
      @result << { 'ordinary': input, 'squared': @result_squared[index] }
    end
    respond_to do |format|
      format.xml { render xml: @result }
    end
  end


  def check_with_nokogiri
    doc = Nokogiri::XML(File.read('some_file.xml'))
    xslt = Nokogiri::XSLT(File.read('some_transformer.xslt'))
    puts xslt.transform(doc)
  end
end

class CalcController < ApplicationController
  include CalcHelper
  before_action :authenticate_user!
  
  def authenticate_user!
    unless user_signed_in?
      puts "User isn't authenticated"
      redirect_to new_user_session_path
    else 
      puts "User #{current_user} is authenticated"
    end
  end

  def input
  end

  def view
    @number = params['num'].to_i
    @result = automorf(@number)
  end
end

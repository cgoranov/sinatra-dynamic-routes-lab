require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    @square_number= @number.to_i**2
    @square_number.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] * params[:number].to_i
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    @number1 = params[:number1].to_i 
    @number2 = params[:number2].to_i
    if params[:operation] == "add"
      @result = @number1 + @number2
    elsif params[:operation] == "subtract"
      @result = @number1 - @number2
    elsif params[:operation] == "multiply"
      @result = @number1 * @number2
    else
      @result = @number1 / @number2
    end
    "#{@result}"
  end


end
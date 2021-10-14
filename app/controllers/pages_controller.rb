class PagesController < ApplicationController

  def name
    name = params["name"]
    render json: {message: "#{name}".upcase}
  end

  def first_letter

    first_letter = params["name"][0]
    if first_letter.downcase == "a"
      render json: {message: "Hey your name starts with the first letter of the alphabet"}
    else
      render json: {message: "Your name doesn't start with the first letter of the alphabet, how lame."}
    end
  end

  def guess_number
    number = params["number"].to_i
    if number == 36
      render json: {message: "You got it right!"}
    elsif number < 36
      render json: {message: "Try a little higher!"}
    elsif number > 36
      render json: {message: "Try a little lower!"}
    end
  end

  def addition
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    answer = number1 + number2
    render json: {message: "Your answer is #{answer}"}
  end

end

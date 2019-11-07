class Api::ParamsExamplesController < ApplicationController
  def query
    @name = params[:name]
    render 'query_view.json.jb'
  end

  def name
    @name = params[:name]
    if @name[0].downcase == "a"
      @message = "your name beings with 'a'"
    else
      @message = "your name does not begin with 'a'"
    end
    render 'name_information.json.jb'
  end

  def number_game
    answer = 36
    # get the user's guess
    user_guess = params[:guess].to_i
    # see how it compares to 36
    if user_guess == 36
      @result = "You win!!"
    elsif user_guess > 36
      @result = "too high"
    elsif user_guess < 36
      @result = "too low"
    end
    # tell them about it
    render 'numbers.json.jb'
  end

  def wildlife
    # @name = params[:name].upcase
    render 'wild.json.jb'
  end

  def guessing_game
    answer = 36
    # get the user's guess
    user_guess = params[:number].to_i
    # see how it compares to 36
    if user_guess == 36
      @result = "You win!!"
    elsif user_guess > 36
      @result = "too high"
    elsif user_guess < 36
      @result = "too low"
    end
    # tell them about it
    render 'numbers.json.jb'
  end
end


# make a route that works
# add a query parameter
# do logic around that query parameter
# send a message to the user based on that logic

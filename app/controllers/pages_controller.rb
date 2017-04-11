class PagesController < ApplicationController

  def welcome
    @header = "This is the welcome page mang"
  end

  def about
    @header = "I don't know what you heard about me"
  end

  def contest
    @header = "All I do is win win WIN no matter WHAT"
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
  
end

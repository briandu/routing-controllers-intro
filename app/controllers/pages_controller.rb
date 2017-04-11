class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the welcome page mang"
  end

  def about
    @header = "I don't know what you heard about me"
  end

  def contest
    @header = "All I do is win win WIN no matter WHAT"
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def check
    check = params[:magic_word]
    if check == "cheat"
      redirect_to "/secrets"
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to "/welcome"
    end
  end

end

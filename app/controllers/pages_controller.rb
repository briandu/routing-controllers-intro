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
end

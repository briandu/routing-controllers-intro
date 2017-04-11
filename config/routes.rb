Rails.application.routes.draw do

  get '/welcome' => 'pages#welcome'

  get '/' => 'pages#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/about' => 'pages#about'

  get '/contest' => 'pages#contest'

  get '/kitten' => 'pages#kitten'
  get '/kittens' => 'pages#kittens'

  get '/secrets/:magic_word' => 'pages#check'
  get '/secrets' => 'pages#secrets'


end

class TweetsController < ApplicationController

  get '/tweets' do
    if logged_in?
      @tweets = Tweet.all
      erb :'tweets/tweets'
    else
      redirect to :'/login'
    end
  end

  get '/tweets/new' do
    if logged_in?
      erb :'tweets/new'
    else
      redirect to :'/login'
    end
  end

  post '/tweets' do
    if logged_in?
      if params[:content] == ""
        redirect to '/tweets/new'
      else
        @tweet = @current_user.tweets.create(:content => params[:content])
      end
      redirect to '/tweets'
    else
      redirect to '/login'
    end
  end

  


end

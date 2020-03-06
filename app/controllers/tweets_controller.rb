class TweetsController < ApplicationController

  get '/tweets' do
    if logged_in?

      erb :''
    else
      erb :'/login'

    end

  end

end

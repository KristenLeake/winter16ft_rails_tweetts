class TweetsController < ApplicationController
  def index
  	@tweets = Tweet.all
  	@tweet = Tweet.new
  end

  def create
  end

  def destroy
  end
end

class TweetsController < ApplicationController
	before_action :set_tweet, only: [:destroy]

  def index
  	@tweets = Tweet.all
  	@tweet = Tweet.new
  end

  def create
  	@tweet = Tweet.new(tweet_params)
	
	respond_to do |format|
		if @tweet.save
			format.html { redirect_to root_path, notice: 'Tweet was successfully posted'}
		end
	end

  end

  def destroy
  	@tweet.destroy

  	respond_to do |format|
  		format.html { redirect_to root_path, notice: 'Tweet was successfully deleted'}
  end
end
 
 private
 def set_tweet
 	@tweet = Tweet.find(params[:id])
 end
  def tweet_params
  	params.require(:tweet).permit(:tweet_text, :username)
  end
end

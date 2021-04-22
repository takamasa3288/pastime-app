class TweetsController < ApplicationController
  def index
  end

  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
  end
  
  private 
  
  def tweet_params
     params.require(:tweet).permit(:content, :pastime_id, :image).merge(user_id: current_user.id)
  end
end

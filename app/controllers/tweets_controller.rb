class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order("created_at DESC")
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
  end

  def show
    set_tweet
  end

  def edit
    set_tweet
    redirect_to root_path unless @tweet.user.id == current_user.id
  end

  def update
    set_tweet
    if @tweet.update(tweet_params)
      redirect_to tweet_path(@tweet.id)
    else
      render :edit
    end
  end

  private 
  
  def tweet_params
     params.require(:tweet).permit(:content, :pastime_id, :image).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end

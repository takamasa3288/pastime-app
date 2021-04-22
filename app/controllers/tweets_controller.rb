class TweetsController < ApplicationController
  def index
  end

  private 
  
  def tweet_params
     params.require(:tweet).permit(:content, :pastime_id, :image).merge(user_id: current_user.id)
  end
end

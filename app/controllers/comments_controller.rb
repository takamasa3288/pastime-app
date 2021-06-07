class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
       @tweet = Tweet.find(params[:tweet_id])
       @comments = @tweet.comments.includes(:user)
    if @comment.save
      redirect_to tweet_path(@comment.tweet_id)
    else
      render template: "tweets/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end

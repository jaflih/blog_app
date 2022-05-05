class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    post = Post.find(params[:post_id])
    Like.create(author: current_user, post:)
    flash[:notice] = 'You have successfully liked.'
    redirect_to user_post_path(current_user, post)
  end
end

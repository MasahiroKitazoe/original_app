class LikesController < ApplicationController

  def create
    @like = Like.create(user_id: current_user.id, image_id: params[:image_id])
    @image = @like.image
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, image_id: params[:image_id])
    @image = like.image
    like.destroy
    @image.likes_count -= 1
  end

end

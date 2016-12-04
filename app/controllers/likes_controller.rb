class LikesController < ApplicationController

  def create
    @like = Like.create(user_id: current_user.id, image_id: params[:image_id])
    @likes = Like.where(image_id: params[:image_id])
    # @images = image.all
    @image= Image.find_by(id: params[:image_id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, image_id: params[:image_id])
    like.destroy
    @likes = Like.where(image_id: params[:image_id])
    # @images = image.all
    @image= Image.find_by(id: params[:image_id])
  end

end

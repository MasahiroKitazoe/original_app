class ReviewsController < LayoutsController

  def index
    redirect_to controller: :subjects, action: :index
  end

  def new
    @subject = Subject.find(params[:subject_id])
    @review = Review.new
    @review.images.build
    @exposures = Exposure.all
  end

  def create
    Review.create(create_params)
  end
end

private
  def create_params
    params.require(:review).permit(
      :rate,
      :comment,
      images_attributes:[
      :image_file,
      :f_value,
      :exposure,
      :wb,
      :title,
      :comment,
      :image_file2,
      :f_value2,
      :exposure2,
      :wb2,
      :title2,
      :comment2,
      :image_file3,
      :f_value3,
      :exposure3,
      :wb3,
      :title3,
      :comment3,
      ]).merge(subject_id: params[:subject_id]).merge(user_id: current_user.id)
  end
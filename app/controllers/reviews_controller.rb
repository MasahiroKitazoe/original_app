class ReviewsController < LayoutsController
  before_action :authenticate_user!, except: :index

  def index
    redirect_to controller: :subjects, action: :index
  end

  def edit
    @subject = Subject.find(params[:subject_id])
    @review = Review.find(params[:id])
    @images = @review.images
    @exposures = Exposure.all
  end

  def update
  end

  def alert
    @review = Review.find_by(user_id: current_user.id)
  end

  def new
    if Review.where(user_id: current_user.id).present?
      redirect_to controller: :reviews, action: :alert
    else

    @subject = Subject.find(params[:subject_id])
    @review = Review.new
    @review.images.build
    # @review.build_image
    @exposures = Exposure.all
  end
  end

  def create
    review = Review.create(create_params)
    images = Image.where(review_id: review.id)

    #Imageテーブルのsubject_idとuser_idに値を代入
    images.update_all(subject_id: params[:subject_id], user_id: current_user.id)
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
      ]).merge(subject_id: params[:subject_id], user_id: current_user.id)
  end
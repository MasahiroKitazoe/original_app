class SubjectsController < ApplicationController

  def index
    @subjects = Subject.order('id ASC').limit(3)
  end

  def search
    @subjects = Subject.where('name LIKE(?)', "%#{params[:keyword]}%")
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
    @subject.images.build
    @prefectures = Prefecture.all
    @exposures = Exposure.all
  end

  def create
    subject = Subject.create(create_params)
    ids = subject.images.ids
    subject.image_id = ids[0]
    subject.save
  end

  private
  def create_params
    params.require(:subject).permit(
      :name,
      :prefecture,
      images_attributes:[
        :image_file,
        :f_value,
        :exposure,
        :wb
        ])
    # params.require(:subject).permit(
      # :name,
      # :prefecture
      # :images_attributes:[
      #   :image_file,
      #   :f_value,
      #   :exposure,
      #   :wb
      #   ]).merge(user_id: current_user.id)
    # ログイン機能ができたらコメントアウトしてあるコードに変更すること！！
  end
end

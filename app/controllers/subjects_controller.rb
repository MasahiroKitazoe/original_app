class SubjectsController < LayoutsController

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
    @prefectures = Prefecture.all
    @exposures = Exposure.all
  end

  def create
    @subject = Subject.create(create_params)
  end

  private
  def create_params
    params.require(:subject).permit(
      :name,
      :prefecture
      ).merge(user_id: current_user.id)
  end
end

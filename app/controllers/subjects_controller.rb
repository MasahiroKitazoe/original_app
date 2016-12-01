class SubjectsController < LayoutsController
  before_action :authenticate_user!, only: :new

  def index
    @subjects = Subject.order('id ASC').limit(3)
  end

  def search
    @subjects = Subject.where('name LIKE(?)', "%#{params[:keyword]}%")
  end

  def show
    @subject = Subject.find(params[:id])
    @map = Map.find_by(subject_id: params[:id])
    @hash = Gmaps4rails.build_markers(@map) do |map, marker|
      marker.lat map.latitude
      marker.lng map.longitude
    end
  end

  def new
    @subject = Subject.new
    @prefectures = Prefecture.all
    @exposures = Exposure.all
  end

  def create
    @subject = Subject.create(create_params)
    redirect_to "/subjects/#{@subject.id}/maps/new"
  end

  private
  def create_params
    params.require(:subject).permit(
      :name,
      :prefecture
      ).merge(user_id: current_user.id)
  end
end

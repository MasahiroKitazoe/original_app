class SubjectsController < LayoutsController
  before_action :authenticate_user!, only: :new

  def index
    subjects_ids = Review.group(:subject_id).order('count_subject_id DESC').limit(20).count(:subject_id).keys
    @subjects = subjects_ids.map{|id| Subject.find(id)}
  end

  def search
    @subjects = Subject.where('name LIKE(?)', "%#{params[:keyword]}%")
  end

  def alert
    @subject = Subject.find(params[:id])
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
    if Subject.where(name: params.require(:subject).permit(:name)[:name]).present?
      subject = Subject.find_by(name: params.require(:subject).permit(:name)[:name])
      redirect_to "/subjects/#{subject.id}/alert"
    else

    Subject.create(create_params)
    redirect_to "/subjects/#{@subject.id}/maps/new"
  end
  end

  private
  def create_params
    params.require(:subject).permit(
      :name,
      :prefecture
      ).merge(user_id: current_user.id)
  end
end

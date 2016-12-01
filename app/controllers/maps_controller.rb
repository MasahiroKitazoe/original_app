class MapsController < LayoutsController

  def new
    @map = Map.find_by(subject_id: params[:id])
    @hash = Gmaps4rails.build_markers(@map) do |map, marker|
      marker.lat map.latitude
      marker.lng map.longitude
    end

    @prefecture = Subject.find(params[:subject_id])
  end
end

class Api::V1::PlantLibrariesController < Api::V1::BaseController

 def index
  @plant_libraries = PlantLibrary.all
 end

 def show
  @plant_library = PlantLibrary.find(params[:id])
 end

end

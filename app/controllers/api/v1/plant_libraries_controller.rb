class Api::V1::PlantLibrariesController < Api::V1::BaseController

 def index
   if params[:query].nil? or params[:query] == ""
     @plant_libraries = PlantLibrary.all
   else
     @plant_libraries = PlantLibrary.search_by_name_and_latin_name(params[:query])
   end
 end

 def show
  @plant_library = PlantLibrary.find(params[:id])
 end

end

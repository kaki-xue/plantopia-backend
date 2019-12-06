class Api::V1::PlantLibrariesController < Api::V1::BaseController

 def index
   if params[:query].nil? or params[:query] == ""
     @plant_libraries = PlantLibrary.all
   else
     @plant_libraries = PlantLibrary.search_by_name_and_latin_name(params[:query])
   end
 end

 def show
    if params[:favoritable].nil? or params[:favoritable] == ""
      @plant_library = PlantLibrary.find(params[:id])
    else
      @user = User.find(params[:user_id])
      @plant = Plant.find(params[:plant_library_id])
      @user.favorite(@plant)
      @plant_library = PlantLibrary.find(params[:id])
    end
  end

  def favorite
    @user = User.find(params[:user_id])
    @plant_libraries = PlantLibrary.find(params[:id])
    @favorite = @user.favorite(@plant)
    @favorite.save

  end

end

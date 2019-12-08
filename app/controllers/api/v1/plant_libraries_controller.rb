class Api::V1::PlantLibrariesController < Api::V1::BaseController
skip_before_action :verify_authenticity_token

 def index

  if params[:latin_name].nil? or params[:latin_name]==""
     if params[:query].nil? or params[:query] == ""
       @plant_libraries = PlantLibrary.all
     else
       @plant_libraries = PlantLibrary.search_by_name_and_latin_name(params[:query])
     end
  else
    @plant_libraries=PlantLibrary.where(latin_name:params[:latin_name])
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
    @plant_library = PlantLibrary.find(params[:plant_library_id])
    @favorite = @user.favorite(@plant_library)
     # redirect_to plant_library_path
    end

  end


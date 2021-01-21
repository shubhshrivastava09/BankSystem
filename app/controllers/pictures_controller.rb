class PicturesController < ApplicationController

	def new
		#new Method
     @picture = current_user.pictures.new
	end

  def create
    @picture = Picture.new(picture_params)
      if @picture.save
        flash[:notice] = 'Image Uploaded'
        redirect_to profile_path(current_user.id)
      end
  end

 
  
  private

  def picture_params
    params.require(:picture).permit(:name,:name_cache,:imageable).merge(imageable: current_user)
  end	  
end
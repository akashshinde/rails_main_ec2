class ImagesController < ApplicationController
  def add_image
  	@images = Images.new(images_params)
  	@images.save
  	redirect_to bhks_path
end

def add_image_project
	@images = PImage.new(project_params)
	@images.save
	redirect_to bhks_path
end

def add_image_project_view
end

def add
end	

private
    def images_params
      params.require(:images).permit(:bhk_id,:photo,:details)
    end

    def project_params
      params.require(:p_image).permit(:project_id,:photo,:details)
    end
end

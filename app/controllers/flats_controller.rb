class FlatsController < ApplicationController
def all_flats
	@id = params[:id]
	@flats1 = Bhk.where(:project_id => @id)
  @flats2 = Hk.where(:project_id => @id)
  @flats = @flats1+@flats2
	respond_to do |format|
		format.json {render json: @flats.to_json }
    format.html {render action: 'all_flats' }
    #format.html {render json: @flats.to_json }
	end
end

    def all_images
       @urls = Array.new
	     @flat_id = params[:flat_id];
   	   @images = Images.where(:bhk_id => @flat_id)
  	   @images.each do |image|
  		 @urls << {:url => image.photo.url,:details => image.details}	
    end
  		respond_to do |format|
      format.json { render text: @urls.to_json }		
    end
  end

    def all_images_project
	    @urls = Array.new
  	  @project = params[:project_id]
   	  @images = PImage.where(:project_id => @project)
  	  @images.each do |image|
  	  @urls << {:url => image.photo.url,:details => image.details}
  end
      respond_to do |format|
      format.json { render text: @urls.to_json }		
    end
end
end    




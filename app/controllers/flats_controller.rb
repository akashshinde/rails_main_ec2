class FlatsController < ApplicationController

  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  # GET /flats
  # GET /flats.json
  def index
    @flats = Flat.all
  end

  # GET /flats/1
  # GET /flats/1.json
  def show
  end

  # GET /flats/new
  def new
    @flat = Flat.new
  end

  def all_flats
  @id = params[:id]
  @flats = Flat.where(:project_id => @id)
  #@flats2 = Hk.where(:project_id => @id)
  #@flats = @flats1+@flats2
  respond_to do |format|
    format.json {render json: @flats.to_json }
    format.html {render action: 'all_flats' }
    #format.html {render json: @flats.to_json }
  end
end

  #   def all_images
  #      @urls = Array.new
   #     @flat_id = params[:flat_id];
  #      @images = Images.where(:flat_id => @flat_id)
  #      @images.each do |image|
  #      @urls << {:url => image.photo.url,:details => image.details} 
  #   end
  #     respond_to do |format|
  #     format.json { render text: @urls.to_json }    
  #   end
  # end

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


  # GET /flats/1/edit
  def edit
  end

  # POST /flats
  # POST /flats.json
  def create
    @flat = Flat.new(flat_params)

    respond_to do |format|
      if @flat.save
        format.html { redirect_to @flat, notice: 'flat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flat }
      else
        format.html { render action: 'new' }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flats/1
  # PATCH/PUT /flats/1.json
  def update
    respond_to do |format|
      if @flat.update(flat_params)
        format.html { redirect_to @flat, notice: 'flat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flats/1
  # DELETE /flats/1.json
  def destroy
    @flat.destroy
    respond_to do |format|
      format.html { redirect_to flats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat
      @flat = Flat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_params
      params.require(:flat).permit(:hall_size, :bed_size, :kitchen_size, :floor, :sold_out, :status,:info,:name,:project_id,:salable_area,:details)
    end

#------------------------------------------------------

end    




class BhksController < ApplicationController
  before_action :set_bhk, only: [:show, :edit, :update, :destroy]

  # GET /bhks
  # GET /bhks.json
  def index
    @bhks = Bhk.all
  end

  # GET /bhks/1
  # GET /bhks/1.json
  def show
  end

  # GET /bhks/new
  def new
    @bhk = Bhk.new
  end

  # GET /bhks/1/edit
  def edit
  end

  # POST /bhks
  # POST /bhks.json
  def create
    @bhk = Bhk.new(bhk_params)

    respond_to do |format|
      if @bhk.save
        format.html { redirect_to @bhk, notice: 'Bhk was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bhk }
      else
        format.html { render action: 'new' }
        format.json { render json: @bhk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bhks/1
  # PATCH/PUT /bhks/1.json
  def update
    respond_to do |format|
      if @bhk.update(bhk_params)
        format.html { redirect_to @bhk, notice: 'Bhk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bhk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bhks/1
  # DELETE /bhks/1.json
  def destroy
    @bhk.destroy
    respond_to do |format|
      format.html { redirect_to bhks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bhk
      @bhk = Bhk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bhk_params
      params.require(:bhk).permit(:hall_size, :bed_size, :kitchen_size, :floor, :sold_out, :status,:info,:name,:project_id,:salable_area)
    end
end

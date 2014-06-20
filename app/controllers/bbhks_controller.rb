class BbhksController < ApplicationController
  before_action :set_bbhk, only: [:show, :edit, :update, :destroy]

  # GET /bbhks
  # GET /bbhks.json
  def index
    @bbhks = Bbhk.all
  end

  # GET /bbhks/1
  # GET /bbhks/1.json
  def show
  end

  # GET /bbhks/new
  def new
    @bbhk = Bbhk.new
  end

  # GET /bbhks/1/edit
  def edit
  end

  # POST /bbhks
  # POST /bbhks.json
  def create
    @bbhk = Bbhk.new(bbhk_params)

    respond_to do |format|
      if @bbhk.save
        format.html { redirect_to @bbhk, notice: 'Bbhk was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bbhk }
      else
        format.html { render action: 'new' }
        format.json { render json: @bbhk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bbhks/1
  # PATCH/PUT /bbhks/1.json
  def update
    respond_to do |format|
      if @bbhk.update(bbhk_params)
        format.html { redirect_to @bbhk, notice: 'Bbhk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bbhk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bbhks/1
  # DELETE /bbhks/1.json
  def destroy
    @bbhk.destroy
    respond_to do |format|
      format.html { redirect_to bbhks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bbhk
      @bbhk = Bbhk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bbhk_params
      params.require(:bbhk).permit(:hall_size, :bed1_size, :bed2_size, :kitchen_size, :floor, :sold_out, :status)
    end
end

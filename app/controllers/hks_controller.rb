class HksController < ApplicationController
  before_action :set_hk, only: [:show, :edit, :update, :destroy]

  # GET /hks
  # GET /hks.json
  def index
    @hks = Hk.all
  end

  # GET /hks/1
  # GET /hks/1.json
  def show
  end

  # GET /hks/new
  def new
    @hk = Hk.new
  end

  # GET /hks/1/edit
  def edit
  end

  # POST /hks
  # POST /hks.json
  def create
    @hk = Hk.new(hk_params)

    respond_to do |format|
      if @hk.save
        format.html { redirect_to @hk, notice: 'Hk was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hk }
      else
        format.html { render action: 'new' }
        format.json { render json: @hk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hks/1
  # PATCH/PUT /hks/1.json
  def update
    respond_to do |format|
      if @hk.update(hk_params)
        format.html { redirect_to @hk, notice: 'Hk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hks/1
  # DELETE /hks/1.json
  def destroy
    @hk.destroy
    respond_to do |format|
      format.html { redirect_to hks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hk
      @hk = Hk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hk_params
      params.require(:hk).permit(:hall_size, :kitchen_size, :floor, :sold_out, :status,:project_id)
    end
end

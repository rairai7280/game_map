class GamecentersController < ApplicationController
  before_action :set_gamecenter, only: [:show, :edit, :update, :destroy]

  # GET /gamecenters
  # GET /gamecenters.json
  def index
    @gamecenters = Gamecenter.all
  end

  # GET /gamecenters/1
  # GET /gamecenters/1.json
  def show
  end

  # GET /gamecenters/new
  def new
    @gamecenter = Gamecenter.new
  end

  # GET /gamecenters/1/edit
  def edit
  end

  # POST /gamecenters
  # POST /gamecenters.json
  def create
    @gamecenter = Gamecenter.new(gamecenter_params)

    respond_to do |format|
      if @gamecenter.save
        format.html { redirect_to @gamecenter, notice: 'Gamecenter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gamecenter }
      else
        format.html { render action: 'new' }
        format.json { render json: @gamecenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamecenters/1
  # PATCH/PUT /gamecenters/1.json
  def update
    respond_to do |format|
      if @gamecenter.update(gamecenter_params)
        format.html { redirect_to @gamecenter, notice: 'Gamecenter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gamecenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamecenters/1
  # DELETE /gamecenters/1.json
  def destroy
    @gamecenter.destroy
    respond_to do |format|
      format.html { redirect_to gamecenters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gamecenter
      @gamecenter = Gamecenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gamecenter_params
      params.require(:gamecenter).permit(:content, :user_id)
    end
end

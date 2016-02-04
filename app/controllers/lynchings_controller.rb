class LynchingsController < ApplicationController
  before_action :set_lynching, only: [:show, :edit, :update, :destroy]

  # GET /lynchings
  # GET /lynchings.json
  def index
    @lynchings = Lynching.all
  end

  # GET /lynchings/1
  # GET /lynchings/1.json
  def show
  end

  # GET /lynchings/new
  def new
    @lynching = Lynching.new
  end

  # GET /lynchings/1/edit
  def edit
  end

  # POST /lynchings
  # POST /lynchings.json
  def create
    @lynching = Lynching.new(lynching_params)

    respond_to do |format|
      if @lynching.save
        format.html { redirect_to @lynching, notice: 'Lynching was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lynching }
      else
        format.html { render action: 'new' }
        format.json { render json: @lynching.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lynchings/1
  # PATCH/PUT /lynchings/1.json
  def update
    respond_to do |format|
      if @lynching.update(lynching_params)
        format.html { redirect_to @lynching, notice: 'Lynching was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lynching.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lynchings/1
  # DELETE /lynchings/1.json
  def destroy
    @lynching.destroy
    respond_to do |format|
      format.html { redirect_to lynchings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lynching
      @lynching = Lynching.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lynching_params
      params.require(:lynching).permit(:year, :month, :day, :name, :city, :state, :allegation)
    end
end

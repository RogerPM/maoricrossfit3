class ShcedulesController < ApplicationController
  before_action :set_shcedule, only: [:show, :edit, :update, :destroy]

  # GET /shcedules
  # GET /shcedules.json
  def index
    @shcedules = Shcedule.all
  end

  # GET /shcedules/1
  # GET /shcedules/1.json
  def show
  end

  # GET /shcedules/new
  def new
    @shcedule = Shcedule.new
  end

  # GET /shcedules/1/edit
  def edit
  end

  # POST /shcedules
  # POST /shcedules.json
  def create
    @shcedule = Shcedule.new(shcedule_params)

    respond_to do |format|
      if @shcedule.save
        format.html { redirect_to @shcedule, notice: 'Shcedule was successfully created.' }
        format.json { render :show, status: :created, location: @shcedule }
      else
        format.html { render :new }
        format.json { render json: @shcedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shcedules/1
  # PATCH/PUT /shcedules/1.json
  def update
    respond_to do |format|
      if @shcedule.update(shcedule_params)
        format.html { redirect_to @shcedule, notice: 'Shcedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @shcedule }
      else
        format.html { render :edit }
        format.json { render json: @shcedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shcedules/1
  # DELETE /shcedules/1.json
  def destroy
    @shcedule.destroy
    respond_to do |format|
      format.html { redirect_to shcedules_url, notice: 'Shcedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shcedule
      @shcedule = Shcedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shcedule_params
      params.require(:shcedule).permit(:start_time, :end_time, :days, :start_hour, :end_hour, :user_id, :service_id)
    end
end

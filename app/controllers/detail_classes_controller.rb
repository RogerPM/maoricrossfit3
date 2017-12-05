class DetailClassesController < ApplicationController
  before_action :set_detail_class, only: [:show, :edit, :update, :destroy]

  # GET /detail_classes
  # GET /detail_classes.json
  def index
    @detail_classes = DetailClass.all
  end

  # GET /detail_classes/1
  # GET /detail_classes/1.json
  def show
  end

  # GET /detail_classes/new
  def new
    @detail_class = DetailClass.new
  end

  # GET /detail_classes/1/edit
  def edit
  end

  # POST /detail_classes
  # POST /detail_classes.json
  def create
    @detail_class = DetailClass.new(detail_class_params)

    respond_to do |format|
      if @detail_class.save
        format.html { redirect_to @detail_class, notice: 'Detail class was successfully created.' }
        format.json { render :show, status: :created, location: @detail_class }
      else
        format.html { render :new }
        format.json { render json: @detail_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_classes/1
  # PATCH/PUT /detail_classes/1.json
  def update
    respond_to do |format|
      if @detail_class.update(detail_class_params)
        format.html { redirect_to @detail_class, notice: 'Detail class was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail_class }
      else
        format.html { render :edit }
        format.json { render json: @detail_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_classes/1
  # DELETE /detail_classes/1.json
  def destroy
    @detail_class.destroy
    respond_to do |format|
      format.html { redirect_to detail_classes_url, notice: 'Detail class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_class
      @detail_class = DetailClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_class_params
      params.require(:detail_class).permit(:client_id, :subscription_id, :state, :comment)
    end
end

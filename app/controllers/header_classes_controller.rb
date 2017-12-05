class HeaderClassesController < ApplicationController
  before_action :set_header_class, only: [:show, :edit, :update, :destroy]

  # GET /header_classes
  # GET /header_classes.json
  def index
    @header_classes = HeaderClass.all
  end

  # GET /header_classes/1
  # GET /header_classes/1.json
  def show
  end

  # GET /header_classes/new
  def new
    @header_class = HeaderClass.new
  end

  # GET /header_classes/1/edit
  def edit
  end

  # POST /header_classes
  # POST /header_classes.json
  def create
    @header_class = HeaderClass.new(header_class_params)

    respond_to do |format|
      if @header_class.save
        format.html { redirect_to @header_class, notice: 'Header class was successfully created.' }
        format.json { render :show, status: :created, location: @header_class }
      else
        format.html { render :new }
        format.json { render json: @header_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /header_classes/1
  # PATCH/PUT /header_classes/1.json
  def update
    respond_to do |format|
      if @header_class.update(header_class_params)
        format.html { redirect_to @header_class, notice: 'Header class was successfully updated.' }
        format.json { render :show, status: :ok, location: @header_class }
      else
        format.html { render :edit }
        format.json { render json: @header_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /header_classes/1
  # DELETE /header_classes/1.json
  def destroy
    @header_class.destroy
    respond_to do |format|
      format.html { redirect_to header_classes_url, notice: 'Header class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_header_class
      @header_class = HeaderClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def header_class_params
      params.require(:header_class).permit(:date, :start_time, :end_time, :maximum_capacity, :registered, :service_id, :shcedule_id, :teacher)
    end
end

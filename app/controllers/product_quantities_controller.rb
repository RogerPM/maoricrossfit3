class ProductQuantitiesController < ApplicationController
  before_action :set_product_quantity, only: [:show, :edit, :update, :destroy]

  # GET /product_quantities
  # GET /product_quantities.json
  def index
    @product_quantities = ProductQuantity.all
  end

  # GET /product_quantities/1
  # GET /product_quantities/1.json
  def show
  end

  # GET /product_quantities/new
  def new
    @product_quantity = ProductQuantity.new
  end

  # GET /product_quantities/1/edit
  def edit
  end

  # POST /product_quantities
  # POST /product_quantities.json
  def create
    @product_quantity = ProductQuantity.new(product_quantity_params)

    respond_to do |format|
      if @product_quantity.save
        format.html { redirect_to @product_quantity, notice: 'Product quantity was successfully created.' }
        format.json { render :show, status: :created, location: @product_quantity }
      else
        format.html { render :new }
        format.json { render json: @product_quantity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_quantities/1
  # PATCH/PUT /product_quantities/1.json
  def update
    respond_to do |format|
      if @product_quantity.update(product_quantity_params)
        format.html { redirect_to @product_quantity, notice: 'Product quantity was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_quantity }
      else
        format.html { render :edit }
        format.json { render json: @product_quantity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_quantities/1
  # DELETE /product_quantities/1.json
  def destroy
    @product_quantity.destroy
    respond_to do |format|
      format.html { redirect_to product_quantities_url, notice: 'Product quantity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_quantity
      @product_quantity = ProductQuantity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_quantity_params
      params.require(:product_quantity).permit(:product_id, :quantity, :subtotal, :sale_id)
    end
end

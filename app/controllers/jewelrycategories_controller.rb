class JewelrycategoriesController < ApplicationController
  before_action :set_jewelrycategory, only: [:show, :edit, :update, :destroy]

  # GET /jewelrycategories
  # GET /jewelrycategories.json
  def index
    @jewelrycategories = Jewelrycategory.all
  end

  # GET /jewelrycategories/1
  # GET /jewelrycategories/1.json
  def show
  end

  # GET /jewelrycategories/new
  def new
    @jewelrycategory = Jewelrycategory.new
  end

  # GET /jewelrycategories/1/edit
  def edit
  end

  # POST /jewelrycategories
  # POST /jewelrycategories.json
  def create
    @jewelrycategory = Jewelrycategory.new(jewelrycategory_params)

    respond_to do |format|
      if @jewelrycategory.save
        format.html { redirect_to @jewelrycategory, notice: 'Jewelrycategory was successfully created.' }
        format.json { render :show, status: :created, location: @jewelrycategory }
      else
        format.html { render :new }
        format.json { render json: @jewelrycategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jewelrycategories/1
  # PATCH/PUT /jewelrycategories/1.json
  def update
    respond_to do |format|
      if @jewelrycategory.update(jewelrycategory_params)
        format.html { redirect_to @jewelrycategory, notice: 'Jewelrycategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @jewelrycategory }
      else
        format.html { render :edit }
        format.json { render json: @jewelrycategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jewelrycategories/1
  # DELETE /jewelrycategories/1.json
  def destroy
    @jewelrycategory.destroy
    respond_to do |format|
      format.html { redirect_to jewelrycategories_url, notice: 'Jewelrycategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jewelrycategory
      @jewelrycategory = Jewelrycategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jewelrycategory_params
      params.require(:jewelrycategory).permit(:jewelrycategory)
    end
end

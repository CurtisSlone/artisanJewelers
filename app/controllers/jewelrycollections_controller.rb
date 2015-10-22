class JewelrycollectionsController < ApplicationController
  before_action :set_jewelrycollection, only: [:show, :edit, :update, :destroy]

  # GET /jewelrycollections
  # GET /jewelrycollections.json
  def index
    @jewelrycollections = Jewelrycollection.all
  end

  # GET /jewelrycollections/1
  # GET /jewelrycollections/1.json
  def show
  end

  # GET /jewelrycollections/new
  def new
    @jewelrycollection = Jewelrycollection.new
  end

  # GET /jewelrycollections/1/edit
  def edit
  end

  # POST /jewelrycollections
  # POST /jewelrycollections.json
  def create
    @jewelrycollection = Jewelrycollection.new(jewelrycollection_params)

    respond_to do |format|
      if @jewelrycollection.save
        format.html { redirect_to @jewelrycollection, notice: 'Jewelrycollection was successfully created.' }
        format.json { render :show, status: :created, location: @jewelrycollection }
      else
        format.html { render :new }
        format.json { render json: @jewelrycollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jewelrycollections/1
  # PATCH/PUT /jewelrycollections/1.json
  def update
    respond_to do |format|
      if @jewelrycollection.update(jewelrycollection_params)
        format.html { redirect_to @jewelrycollection, notice: 'Jewelrycollection was successfully updated.' }
        format.json { render :show, status: :ok, location: @jewelrycollection }
      else
        format.html { render :edit }
        format.json { render json: @jewelrycollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jewelrycollections/1
  # DELETE /jewelrycollections/1.json
  def destroy
    @jewelrycollection.destroy
    respond_to do |format|
      format.html { redirect_to jewelrycollections_url, notice: 'Jewelrycollection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jewelrycollection
      @jewelrycollection = Jewelrycollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jewelrycollection_params
      params.require(:jewelrycollection).permit(:jewelcollection)
    end
end

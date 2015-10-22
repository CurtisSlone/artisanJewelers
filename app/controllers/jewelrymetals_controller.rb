class JewelrymetalsController < ApplicationController
  before_action :set_jewelrymetal, only: [:show, :edit, :update, :destroy]

  # GET /jewelrymetals
  # GET /jewelrymetals.json
  def index
    @jewelrymetals = Jewelrymetal.all
  end

  # GET /jewelrymetals/1
  # GET /jewelrymetals/1.json
  def show
  end

  # GET /jewelrymetals/new
  def new
    @jewelrymetal = Jewelrymetal.new
  end

  # GET /jewelrymetals/1/edit
  def edit
  end

  # POST /jewelrymetals
  # POST /jewelrymetals.json
  def create
    @jewelrymetal = Jewelrymetal.new(jewelrymetal_params)

    respond_to do |format|
      if @jewelrymetal.save
        format.html { redirect_to @jewelrymetal, notice: 'Jewelrymetal was successfully created.' }
        format.json { render :show, status: :created, location: @jewelrymetal }
      else
        format.html { render :new }
        format.json { render json: @jewelrymetal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jewelrymetals/1
  # PATCH/PUT /jewelrymetals/1.json
  def update
    respond_to do |format|
      if @jewelrymetal.update(jewelrymetal_params)
        format.html { redirect_to @jewelrymetal, notice: 'Jewelrymetal was successfully updated.' }
        format.json { render :show, status: :ok, location: @jewelrymetal }
      else
        format.html { render :edit }
        format.json { render json: @jewelrymetal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jewelrymetals/1
  # DELETE /jewelrymetals/1.json
  def destroy
    @jewelrymetal.destroy
    respond_to do |format|
      format.html { redirect_to jewelrymetals_url, notice: 'Jewelrymetal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jewelrymetal
      @jewelrymetal = Jewelrymetal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jewelrymetal_params
      params.require(:jewelrymetal).permit(:metal)
    end
end

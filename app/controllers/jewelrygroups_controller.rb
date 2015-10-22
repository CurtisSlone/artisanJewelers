class JewelrygroupsController < ApplicationController
  before_action :set_jewelrygroup, only: [:show, :edit, :update, :destroy]

  # GET /jewelrygroups
  # GET /jewelrygroups.json
  def index
    @jewelrygroups = Jewelrygroup.all
  end

  # GET /jewelrygroups/1
  # GET /jewelrygroups/1.json
  def show
  end

  # GET /jewelrygroups/new
  def new
    @jewelrygroup = Jewelrygroup.new
  end

  # GET /jewelrygroups/1/edit
  def edit
  end

  # POST /jewelrygroups
  # POST /jewelrygroups.json
  def create
    @jewelrygroup = Jewelrygroup.new(jewelrygroup_params)

    respond_to do |format|
      if @jewelrygroup.save
        format.html { redirect_to @jewelrygroup, notice: 'Jewelrygroup was successfully created.' }
        format.json { render :show, status: :created, location: @jewelrygroup }
      else
        format.html { render :new }
        format.json { render json: @jewelrygroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jewelrygroups/1
  # PATCH/PUT /jewelrygroups/1.json
  def update
    respond_to do |format|
      if @jewelrygroup.update(jewelrygroup_params)
        format.html { redirect_to @jewelrygroup, notice: 'Jewelrygroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @jewelrygroup }
      else
        format.html { render :edit }
        format.json { render json: @jewelrygroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jewelrygroups/1
  # DELETE /jewelrygroups/1.json
  def destroy
    @jewelrygroup.destroy
    respond_to do |format|
      format.html { redirect_to jewelrygroups_url, notice: 'Jewelrygroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jewelrygroup
      @jewelrygroup = Jewelrygroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jewelrygroup_params
      params.require(:jewelrygroup).permit(:jewelrygroup)
    end
end

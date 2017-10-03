class MechanicalPropertiesController < ApplicationController
  before_action :set_mechanical_property, only: [:show, :edit, :update, :destroy]

  # GET /mechanical_properties
  # GET /mechanical_properties.json
  def index
    @mechanical_properties = MechanicalProperty.all
  end

  # GET /mechanical_properties/1
  # GET /mechanical_properties/1.json
  def show
  end

  # GET /mechanical_properties/new
  def new
    @mechanical_property = MechanicalProperty.new
  end

  # GET /mechanical_properties/1/edit
  def edit
  end

  # POST /mechanical_properties
  # POST /mechanical_properties.json
  def create
    @mechanical_property = MechanicalProperty.new(mechanical_property_params)

    respond_to do |format|
      if @mechanical_property.save
        format.html { redirect_to @mechanical_property, notice: 'Mechanical property was successfully created.' }
        format.json { render :show, status: :created, location: @mechanical_property }
      else
        format.html { render :new }
        format.json { render json: @mechanical_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mechanical_properties/1
  # PATCH/PUT /mechanical_properties/1.json
  def update
    respond_to do |format|
      if @mechanical_property.update(mechanical_property_params)
        format.html { redirect_to @mechanical_property, notice: 'Mechanical property was successfully updated.' }
        format.json { render :show, status: :ok, location: @mechanical_property }
      else
        format.html { render :edit }
        format.json { render json: @mechanical_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mechanical_properties/1
  # DELETE /mechanical_properties/1.json
  def destroy
    @mechanical_property.destroy
    respond_to do |format|
      format.html { redirect_to mechanical_properties_url, notice: 'Mechanical property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mechanical_property
      @mechanical_property = MechanicalProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mechanical_property_params
      params.require(:mechanical_property).permit(:silk_sample_id, :toughness, :toughness_sd)
    end
end

class SpecimenSamplesController < ApplicationController
  before_action :set_specimen_sample, only: [:show, :edit, :update, :destroy]

  # GET /specimen_samples
  # GET /specimen_samples.json
  def index
    @specimen_samples = SpecimenSample.all
  end

  # GET /specimen_samples/1
  # GET /specimen_samples/1.json
  def show
  end

  # GET /specimen_samples/new
  def new
    @specimen_sample = SpecimenSample.new
  end

  # GET /specimen_samples/1/edit
  def edit
  end

  # POST /specimen_samples
  # POST /specimen_samples.json
  def create
    @specimen_sample = SpecimenSample.new(specimen_sample_params)

    respond_to do |format|
      if @specimen_sample.save
        format.html { redirect_to @specimen_sample, notice: 'Specimen sample was successfully created.' }
        format.json { render :show, status: :created, location: @specimen_sample }
      else
        format.html { render :new }
        format.json { render json: @specimen_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specimen_samples/1
  # PATCH/PUT /specimen_samples/1.json
  def update
    respond_to do |format|
      if @specimen_sample.update(specimen_sample_params)
        format.html { redirect_to @specimen_sample, notice: 'Specimen sample was successfully updated.' }
        format.json { render :show, status: :ok, location: @specimen_sample }
      else
        format.html { render :edit }
        format.json { render json: @specimen_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specimen_samples/1
  # DELETE /specimen_samples/1.json
  def destroy
    @specimen_sample.destroy
    respond_to do |format|
      format.html { redirect_to specimen_samples_url, notice: 'Specimen sample was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specimen_sample
      @specimen_sample = SpecimenSample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specimen_sample_params
      params.require(:specimen_sample).permit(:indivisual_id, :specimen_type, :paper, :institution)
    end
end

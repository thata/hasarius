class SilkSamplesController < ApplicationController
  before_action :set_silk_sample, only: [:show, :edit, :update, :destroy]

  # GET /silk_samples
  # GET /silk_samples.json
  def index
    @silk_samples = SilkSample.all
  end

  # GET /silk_samples/1
  # GET /silk_samples/1.json
  def show
  end

  # GET /silk_samples/new
  def new
    @silk_sample = SilkSample.new
  end

  # GET /silk_samples/1/edit
  def edit
  end

  # POST /silk_samples
  # POST /silk_samples.json
  def create
    @silk_sample = SilkSample.new(silk_sample_params)

    respond_to do |format|
      if @silk_sample.save
        format.html { redirect_to @silk_sample, notice: 'Silk sample was successfully created.' }
        format.json { render :show, status: :created, location: @silk_sample }
      else
        format.html { render :new }
        format.json { render json: @silk_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /silk_samples/1
  # PATCH/PUT /silk_samples/1.json
  def update
    respond_to do |format|
      if @silk_sample.update(silk_sample_params)
        format.html { redirect_to @silk_sample, notice: 'Silk sample was successfully updated.' }
        format.json { render :show, status: :ok, location: @silk_sample }
      else
        format.html { render :edit }
        format.json { render json: @silk_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /silk_samples/1
  # DELETE /silk_samples/1.json
  def destroy
    @silk_sample.destroy
    respond_to do |format|
      format.html { redirect_to silk_samples_url, notice: 'Silk sample was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_silk_sample
      @silk_sample = SilkSample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def silk_sample_params
      params.require(:silk_sample).permit(:indivisual_id, :silk_type, :paper, :institution)
    end
end

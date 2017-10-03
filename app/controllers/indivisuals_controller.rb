class IndivisualsController < ApplicationController
  before_action :set_indivisual, only: [:show, :edit, :update, :destroy]

  # GET /indivisuals
  # GET /indivisuals.json
  def index
    @indivisuals = Indivisual.all
  end

  # GET /indivisuals/1
  # GET /indivisuals/1.json
  def show
  end

  # GET /indivisuals/new
  def new
    @indivisual = Indivisual.new
  end

  # GET /indivisuals/1/edit
  def edit
  end

  # POST /indivisuals
  # POST /indivisuals.json
  def create
    @indivisual = Indivisual.new(indivisual_params)

    respond_to do |format|
      if @indivisual.save
        format.html { redirect_to @indivisual, notice: 'Indivisual was successfully created.' }
        format.json { render :show, status: :created, location: @indivisual }
      else
        format.html { render :new }
        format.json { render json: @indivisual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indivisuals/1
  # PATCH/PUT /indivisuals/1.json
  def update
    respond_to do |format|
      if @indivisual.update(indivisual_params)
        format.html { redirect_to @indivisual, notice: 'Indivisual was successfully updated.' }
        format.json { render :show, status: :ok, location: @indivisual }
      else
        format.html { render :edit }
        format.json { render json: @indivisual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indivisuals/1
  # DELETE /indivisuals/1.json
  def destroy
    @indivisual.destroy
    respond_to do |format|
      format.html { redirect_to indivisuals_url, notice: 'Indivisual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indivisual
      @indivisual = Indivisual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indivisual_params
      params.require(:indivisual).permit(:organism_id, :sex, :sampling_date, :country, :size)
    end
end

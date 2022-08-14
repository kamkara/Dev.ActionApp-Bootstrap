class BenevolsController < ApplicationController
  before_action :set_benevol, only: %i[ show edit update destroy ]

  # GET /benevols or /benevols.json
  def index
    @benevolsList = Benevol.all.order('created_at desc')
    @benevolsListMonthly = @benevolsList.monthlyActif
    @benevolsListWeekly = @benevolsListMonthly.weeklyActif
  end

  # GET /benevols/1 or /benevols/1.json
  def show
  end

  # GET /benevols/new
  def new
    @benevol = Benevol.new
  end

  # GET /benevols/1/edit
  def edit
  end

  # POST /benevols or /benevols.json
  def create
    @benevol = Benevol.new(benevol_params)

    respond_to do |format|
      if @benevol.save
        format.html { redirect_to benevols_path, notice: "Benevol was successfully created." }
        format.json { render :show, status: :created, location: @benevol }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @benevol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /benevols/1 or /benevols/1.json
  def update
    respond_to do |format|
      if @benevol.update(benevol_params)
        format.html { redirect_to benevol_url(@benevol), notice: "Benevol was successfully updated." }
        format.json { render :show, status: :ok, location: @benevol }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @benevol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benevols/1 or /benevols/1.json
  def destroy
    @benevol.destroy

    respond_to do |format|
      format.html { redirect_to benevols_url, notice: "Benevol was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benevol
      @benevol = Benevol.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def benevol_params
      params.require(:benevol).permit(:full_name, :role, :img, :link_fb, :link_tw, :link_ldin, :status)
    end
end

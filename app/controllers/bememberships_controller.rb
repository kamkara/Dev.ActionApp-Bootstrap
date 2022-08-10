class BemembershipsController < ApplicationController
  before_action :set_bemembership, only: %i[edit update destroy ]

  # GET /bememberships or /bememberships.json
  def index
    @bememberships = Bemembership.all
  end

  

  def page_good
  end

  # GET /bememberships/new
  def new
    @bemembership = Bemembership.new
  end

  # GET /bememberships/1/edit
  def edit
    
  end

  # POST /bememberships or /bememberships.json
  def create
    @bemembership = Bemembership.new(bemembership_params)

    respond_to do |format|
      if @bemembership.save
        format.html { redirect_to good_path, notice: "Adhésion effectuée avec succes." }
        format.json { render :show, status: :created, location: @bemembership }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bemembership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bememberships/1 or /bememberships/1.json
  def update
    respond_to do |format|
      if @bemembership.update(bemembership_params)
        format.html { redirect_to bemembership_url(@bemembership), notice: "Bemembership was successfully updated." }
        format.json { render :show, status: :ok, location: @bemembership }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bemembership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bememberships/1 or /bememberships/1.json
  def destroy
    @bemembership.destroy

    respond_to do |format|
      format.html { redirect_to bememberships_url, notice: "Bemembership was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bemembership
      @bemembership = Bemembership.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bemembership_params
      params.require(:bemembership).permit(:first_name, :last_name, :email, :country, :contact, :gender)
    end
end

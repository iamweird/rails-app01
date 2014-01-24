class InternetTypesController < ApplicationController
  before_action :set_internet_type, only: [:show, :edit, :update, :destroy]

  # GET /internet_types
  # GET /internet_types.json
  def index
    @internet_types = InternetType.all
  end

  # GET /internet_types/1
  # GET /internet_types/1.json
  def show
  end

  # GET /internet_types/new
  def new
    @internet_type = InternetType.new
  end

  # GET /internet_types/1/edit
  def edit
  end

  # POST /internet_types
  # POST /internet_types.json
  def create
    @internet_type = InternetType.new(internet_type_params)

    respond_to do |format|
      if @internet_type.save
        format.html { redirect_to @internet_type, notice: 'Internet type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @internet_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @internet_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internet_types/1
  # PATCH/PUT /internet_types/1.json
  def update
    respond_to do |format|
      if @internet_type.update(internet_type_params)
        format.html { redirect_to @internet_type, notice: 'Internet type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @internet_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internet_types/1
  # DELETE /internet_types/1.json
  def destroy
    @internet_type.destroy
    respond_to do |format|
      format.html { redirect_to internet_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internet_type
      @internet_type = InternetType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def internet_type_params
      params.require(:internet_type).permit(:name)
    end
end

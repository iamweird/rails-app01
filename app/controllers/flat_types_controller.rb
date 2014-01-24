class FlatTypesController < ApplicationController
  before_action :set_flat_type, only: [:show, :edit, :update, :destroy]

  # GET /flat_types
  # GET /flat_types.json
  def index
    @flat_types = FlatType.all
  end

  # GET /flat_types/1
  # GET /flat_types/1.json
  def show
  end

  # GET /flat_types/new
  def new
    @flat_type = FlatType.new
  end

  # GET /flat_types/1/edit
  def edit
  end

  # POST /flat_types
  # POST /flat_types.json
  def create
    @flat_type = FlatType.new(flat_type_params)

    respond_to do |format|
      if @flat_type.save
        format.html { redirect_to @flat_type, notice: 'Flat type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flat_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @flat_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flat_types/1
  # PATCH/PUT /flat_types/1.json
  def update
    respond_to do |format|
      if @flat_type.update(flat_type_params)
        format.html { redirect_to @flat_type, notice: 'Flat type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flat_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flat_types/1
  # DELETE /flat_types/1.json
  def destroy
    @flat_type.destroy
    respond_to do |format|
      format.html { redirect_to flat_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat_type
      @flat_type = FlatType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_type_params
      params.require(:flat_type).permit(:name)
    end
end

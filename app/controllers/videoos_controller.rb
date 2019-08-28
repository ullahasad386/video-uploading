class VideoosController < ApplicationController
  before_action :set_videoo, only: [:show, :edit, :update, :destroy]

  # GET /videoos
  # GET /videoos.json
  def index
    @videoos = Videoo.all
  end

  # GET /videoos/1
  # GET /videoos/1.json
  def show
  end

  # GET /videoos/new
  def new
    @videoo = Videoo.new
  end

  # GET /videoos/1/edit
  def edit
  end

  # POST /videoos
  # POST /videoos.json
  def create
    @videoo = Videoo.new(videoo_params)

    respond_to do |format|
      if @videoo.save
        format.html { redirect_to @videoo, notice: 'Videoo was successfully created.' }
        format.json { render :show, status: :created, location: @videoo }
      else
        format.html { render :new }
        format.json { render json: @videoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videoos/1
  # PATCH/PUT /videoos/1.json
  def update
    respond_to do |format|
      if @videoo.update(videoo_params)
        format.html { redirect_to @videoo, notice: 'Videoo was successfully updated.' }
        format.json { render :show, status: :ok, location: @videoo }
      else
        format.html { render :edit }
        format.json { render json: @videoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videoos/1
  # DELETE /videoos/1.json
  def destroy
    @videoo.destroy
    respond_to do |format|
      format.html { redirect_to videoos_url, notice: 'Videoo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videoo
      @videoo = Videoo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def videoo_params
      params.require(:videoo).permit(:title, :description, :clip, :thumbnail)
    end
end

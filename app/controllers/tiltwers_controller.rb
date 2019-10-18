class TiltwersController < ApplicationController
  before_action :authenticate_user!

  # GET /tiltwers
  # GET /tiltwers.json
  def index
    @tiltwers = Tiltwer.all
  end

  # GET /tiltwers/1
  # GET /tiltwers/1.json
  def show
    @tiltwer = Tiltwer.find(params[:id])
  end

  # GET /tiltwers/new
  def new
    @tiltwer = current_user.tiltwers.new
  end

  # GET /tiltwers/1/edit
  def edit
    @tiltwer = current_user.tiltwers.find(params[:id])
  end

  # POST /tiltwers
  # POST /tiltwers.json
  def create
    @tiltwer = current_user.tiltwers.new(tiltwer_params)

    respond_to do |format|
      if @tiltwer.save
        format.html { redirect_to @tiltwer, notice: 'Tiltwer was successfully created.' }
        format.json { render :show, status: :created, location: @tiltwer }
      else
        format.html { render :new }
        format.json { render json: @tiltwer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiltwers/1
  # PATCH/PUT /tiltwers/1.json
  def update
    @tiltwer = current_user.tiltwers.find(params[:id])
    respond_to do |format|
      if @tiltwer.update(tiltwer_params)
        format.html { redirect_to @tiltwer, notice: 'Tiltwer was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiltwer }
      else
        format.html { render :edit }
        format.json { render json: @tiltwer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiltwers/1
  # DELETE /tiltwers/1.json
  def destroy
    @tiltwer.destroy
    respond_to do |format|
      format.html { redirect_to tiltwers_url, notice: 'Tiltwer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiltwer
      @tiltwer = Tiltwer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiltwer_params
      params.require(:tiltwer).permit(:user_id, :content, :photo)
    end
end

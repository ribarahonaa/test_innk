class ArriendosController < ApplicationController
  before_action :set_arriendo, only: [:show, :edit, :update, :destroy]

  # GET /arriendos
  # GET /arriendos.json
  def index
    @arriendos = Arriendo.all
  end

  # GET /arriendos/1
  # GET /arriendos/1.json
  def show
  end

  # GET /arriendos/new
  def new
    @arriendo = Arriendo.new
    @kind = params[:kind]

    if @kind == 'film'
      @film = Film.find(params[:film])
    else
      @serie = Serie.find(params[:serie])
    end
  end

  # GET /arriendos/1/edit
  def edit
  end

  # POST /arriendos
  # POST /arriendos.json
  def create
    @user = User.find_by(email: params[:user_email])

    if !@user
      @user = User.new
      @user.name = params[:user_name]
      @user.email = params[:user_email]
      @user.save
    end

    @arriendo = Arriendo.new
    @arriendo.kind = arriendo_params[:kind]
    if arriendo_params[:kind] == 'film'
      @arriendo.films_id = arriendo_params[:films_id]
    elsif arriendo_params[:kind] == 'serie'
      @arriendo.series_id = arriendo_params[:series_id]
    end
    @arriendo.users_id = @user.id
    @arriendo.save

    respond_to do |format|
      if @arriendo.save
        format.html { redirect_to arriendos_path, notice: 'Arriendo was successfully created.' }
        format.json { render :show, status: :created, location: @arriendo }
      else
        format.html { render :new }
        format.json { render json: @arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arriendos/1
  # PATCH/PUT /arriendos/1.json
  def update
    respond_to do |format|
      if @arriendo.update(arriendo_params)
        format.html { redirect_to @arriendo, notice: 'Arriendo was successfully updated.' }
        format.json { render :show, status: :ok, location: @arriendo }
      else
        format.html { render :edit }
        format.json { render json: @arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arriendos/1
  # DELETE /arriendos/1.json
  def destroy
    @arriendo.destroy
    respond_to do |format|
      format.html { redirect_to arriendos_url, notice: 'Arriendo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arriendo
      @arriendo = Arriendo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def arriendo_params
      params.require(:arriendo).permit(:kind, :users_id, :films_id, :series_id)
    end
end

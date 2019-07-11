class LUsersController < ApplicationController
  before_action :set_l_user, only: [:show, :edit, :update, :destroy]

  # GET /l_users
  # GET /l_users.json
  def index
    @l_users = LUser.order(:name)
  end

  # GET /l_users/1
  # GET /l_users/1.json
  def show
  end

  # GET /l_users/new
  def new
    @l_user = LUser.new
  end

  # GET /l_users/1/edit
  def edit
  end

  # POST /l_users
  # POST /l_users.json
  def create
    @l_user = LUser.new(l_user_params)

    respond_to do |format|
      if @l_user.save
        format.html { redirect_to l_users_url, notice: "User #{@l_user.name} was successfully created." }
        format.json { render :show, status: :created, location: @l_user }
      else
        format.html { render :new }
        format.json { render json: @l_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /l_users/1
  # PATCH/PUT /l_users/1.json
  def update
    respond_to do |format|
      if @l_user.update(l_user_params)
        format.html { redirect_to l_users_url, notice: "User #{@l_user.name} was successfully updated." }
        format.json { render :show, status: :ok, location: @l_user }
      else
        format.html { render :edit }
        format.json { render json: @l_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /l_users/1
  # DELETE /l_users/1.json
  def destroy
    @l_user.destroy
    respond_to do |format|
      format.html { redirect_to l_users_url, notice: 'L user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  rescue_from 'LUser::Error' do |exception|
    redirect_to l_users_url, notice: exception.message
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_l_user
      @l_user = LUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def l_user_params
      params.require(:l_user).permit(:name, :password, :password_confirmation)
    end
end

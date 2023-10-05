class RolesController < ApplicationController
  before_action :set_user , only: %i[show edit update destroy]
  before_action :set_role, only: %i[ show edit update destroy ]

  # GET /roles or /roles.json
  def index
    @roles = Role.all
  end

  # GET /roles/1 or /roles/1.json
  def show
  end

  # GET /roles/new
  def new
    @role = @user.roles.build
  end

  # GET /roles/1/edit
  def edit
  end

  # POST /roles or /roles.json
  def create
    @role = @user.roles.new(role_params)

      if @role.save
       redirect_to user_role_path(@role.user, @role), notice: "Role was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

  # PATCH/PUT /roles/1 or /roles/1.json
  def update
    
      if @role.update(role_params)
        redirect_to role_url(@role), notice: "Role was successfully updated."
        render :show, status: :ok, location: @role 
      else
       render :edit, status: :unprocessable_entity 
       render json: @role.errors, status: :unprocessable_entity
      end
  end

  # DELETE /roles/1 or /roles/1.json
  def destroy
    @role.destroy
      redirect_to roles_url, notice: "Role was successfully destroyed."
      head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = @user.roles.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def role_params
      params.require(:role).permit(:name, :grade)
    end

    def set_user
      @user = User.find(params[:user_id])
    end
end

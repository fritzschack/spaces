class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update ]
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @spaces = Space.all
  end

  def show
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user_id = current_user.id
    @user = current_user
    @user.is_host = true
    @user.save
    if @space.save
      redirect_to spaces_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  def destroy
    Space.delete(Space.where(user_id: current_user.id))
    redirect_to my_profile_path
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :description, :address, :phone, :price_per_day, :website)
  end
end

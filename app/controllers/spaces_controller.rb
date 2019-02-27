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
    @space_images = @space.photos.build
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    @user = current_user
    @user.is_host = true
    @user.save
    if @space.save
      params[:space][:photos_attributes]['0']['image_url'].each do |a|
        @space_images = @space.photos.create!(image_url: a)
      end
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
    space = Space.find(params[:id])
    space.destroy
    redirect_to my_profile_path
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :description, :address, :phone, :price_per_day, photos_attributes: [:id, :user_id, :image_url])
  end
end

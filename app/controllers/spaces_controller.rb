class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update ]
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @spaces = Space.all
    if params[:name_query].present?
      @spaces = @spaces.where(
        "name @@ :name_query OR description @@ :name_query",
        name_query: "%#{params[:name_query]}%"
      )
    end

    if params[:location_query] == ''
      @spaces = @spaces.where.not(latitude: nil, longitude: nil)
    elsif params[:location_query]
      @spaces = @spaces.near(params[:location_query], 20)
    end

    if params[:min_price_query].present?
      min_price = params[:min_price_query].to_i
      @spaces = @spaces.where("price_per_day > #{min_price}")
    end

    if params[:max_price_query].present?
      max_price = params[:max_price_query].to_i
      @spaces = @spaces.where("price_per_day < #{max_price}")
    end

    # raise

    if params[:order_query] == "Ascending price per day"
      @spaces = @spaces.order(price_per_day: :asc)
    elsif params[:order_query] == "Descending price per day"
      @spaces = @spaces.order(price_per_day: :desc)
    elsif params[:order_query] == "Ascending names"
      @spaces = @spaces.order(name: :asc)
    elsif params[:order_query] == "Descending names"
      @spaces = @spaces.order(name: :desc)
    end
    set_markers
  end

  def show
    @hosted_by = User.find(@space.user_id)
    @space_map = Space.where(id: params[:id])
    @markers = @space_map.map do |space|
      {
        lng: space.longitude,
        lat: space.latitude
      }
    end
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
    if current_user.id != @space.user_id
      redirect_to root_path
      flash[:alert] = 'Not Gonna Happen'
    end
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

  def set_markers
    @markers = @spaces.map do |space|
      {
        lng: space.longitude,
        lat: space.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { space: space })
      }
    end
  end

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :description, :address, :phone, :price_per_day, photos_attributes: [:id, :user_id, :image_url])
  end
end

class Admin::HelitagesController < ApplicationController
  def new
    @helitage = Helitage.new
    @genres = Genre.all
    @countries = Country.all
  end
  

  def create
    @helitage = Helitage.new(helitage_params)
    #投稿

    if @helitage.save
        redirect_to admin_helitages_path
    else
        @genres = Genre.all
        render :new
    end
  end

  def index
    @helitages = Helitage.all
  end

  def show
    @helitage = Helitage.find(params[:id])
  end

  def edit
    @helitage = Helitage.find(params[:id])
    @genres= Genre.all
  end

  def destroy
    @helitages = Helitage.find(params[:id])
    @helitages.destroy
    redirect_to helitages_path
  end

  def update
  @helitages = Helitage.find(params[:id])
  @helitages.update(helitage_params)
  redirect_to helitage_path(@helitages)

  end

  private
    def helitage_params
      params.require(:helitage).permit(:genre_id, :address, :latitude, :longitude, :name, :point, :body, :start_time, :finish_time, :price, :image)
    end

end

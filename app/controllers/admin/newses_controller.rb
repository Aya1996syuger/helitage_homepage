class Admin::NewsesController < ApplicationController
  def new
    @news = News.new
    @genres = Genre.all
    @countries = Country.all
  end


  def create
    @news = News.new(news_params)
    #投稿

    if @news.save
        redirect_to admin_newses_path
    else
        @genres = Genre.all
        render :new
    end

  end

  def index
    @newses = News.all.order("id DESC")
    @current_time = Time.current
  end

  def show
    @news = News.find(params[:id])
  end

  def edit
    @news = News.find(params[:id])
    @genres= Genre.all
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to Newss_path
  end

  def update
    @newss = News.find(params[:id])
    @newss.update(news_params)
    redirect_to news_path(@newss)

  end

  private
    def news_params
      params.require(:news).permit(:genre_id, :address, :name, :point, :body, :image)
    end

end


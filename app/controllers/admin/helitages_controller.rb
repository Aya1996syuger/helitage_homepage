class Admin::HelitagesController < ApplicationController
  def new
    @helitage = Helitage.new
    @genres = Genre.all
    @countries = Country.all
  end

end

class HelitagesController < ApplicationController
  def top
  end
  
  private
    def todo_params
      params.require(:helitage).permit(:title, :image)
    end
end

class HomePageController < ApplicationController
  def index
  	@home_page = HomePage.search(params[:gamertag])
  	@home_page = HomePage.search(params[:PSN_id])
  end

  private
  def search_params
    params.require(:search).permit(:gamertag, :PSN_id)
  end
end

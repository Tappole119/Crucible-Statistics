class HomePageController < ApplicationController
  def index
  	@gamertag = HomePage.search(params[:gamertag])
  end

  def parser

  end

  private
  def search_params
    params.require(:search).permit(:gamertag, :PSN_id)
  end
end

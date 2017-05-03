class SearchesController < ApplicationController

  def new
    @search = Search.new
    @categories = Catalog.uniq.pluck(:category)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

    def search_params
      params.require(:search).permit(:keywords,:category,:min_value,:max_value)
    end
end

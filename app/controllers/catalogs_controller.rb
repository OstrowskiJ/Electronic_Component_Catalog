class CatalogsController < ApplicationController
    before_action :find_catalog, only: [:show,:edit,:update,:destroy]
    def index
    end

    def show
    end

    def new
      @catalog = Catalog.new
    end

    def create
      @catalog = Catalog.new(catalog_params)
      if @catalog.save
        redirect_to @catalog
      else
        render 'new'
      end
    end

    def edit
    end

    def updated
    end

    def destroy
    end

    private

    def catalog_params
      params.require(:catalog).permit(:title, :category)
    end

    def find_catalog
      @catalog = Catalog.find(params[:id])
    end
end

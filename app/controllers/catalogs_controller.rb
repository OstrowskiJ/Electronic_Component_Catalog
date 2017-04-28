class CatalogsController < ApplicationController
    before_action :find_catalog, only: [:show,:edit,:update,:destroy]
    def index
      @catalogs = Catalog.all.order("created_at DESC")
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

    def update
      if @catalog.update(catalog_params)
        redirect_to @catalog
      else
        render 'edit'
      end
    end

    def destroy
      @catalog.destroy
      redirect_to root_path
    end

    private

    def catalog_params
      params.require(:catalog).permit(:category, :element, :value, :amount)
    end

    def find_catalog
      @catalog = Catalog.find(params[:id])
    end
end

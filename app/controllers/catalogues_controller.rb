class CataloguesController < ApplicationController
  before_action :set_catalogue, only: [:show, :edit, :update]

  def index
    @catalogues = Catalogue.all
  end

  def show
  end

  def new
    @catalogue = Catalogue.new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def set_catalogue
  end

  def catalogue_params
    params.require(:catalogue).permit(:name)
  end
end

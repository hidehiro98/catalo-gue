require "dmm"

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
    @catalogue = Catalogue.new(catalogue_params)
    @catalogue.rank1 = Dmm.dmm_url(@catalogue.rank1)
    @catalogue.rank2 = Dmm.dmm_url(@catalogue.rank2)
    @catalogue.rank3 = Dmm.dmm_url(@catalogue.rank3)
    @catalogue.rank4 = Dmm.dmm_url(@catalogue.rank4)
    @catalogue.rank5 = Dmm.dmm_url(@catalogue.rank5)
    @catalogue.rank6 = Dmm.dmm_url(@catalogue.rank6)
    @catalogue.rank7 = Dmm.dmm_url(@catalogue.rank7)
    @catalogue.user = current_user

    if @catalogue.save!
      redirect_to catalogue_path(@catalogue)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def set_catalogue
    @catalogue = Catalogue.find(params[:id])
  end

  def catalogue_params
    params.require(:catalogue).permit(:name, :rank1, :rank2, :rank3,
      :rank4, :rank5, :rank6, :rank7)
  end
end

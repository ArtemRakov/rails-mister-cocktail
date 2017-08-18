class CocktailsController < ApplicationController
  layout "home", only: [:home]
  before_action :set_cocktail, only: [:show]
  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @dose = Dose.new
  end

  def home
    @cocktails = Cocktail.all
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end

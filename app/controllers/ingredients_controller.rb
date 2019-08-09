class IngredientsController < ApplicationController
  def index
    @ingredients = ingredient.all
  end

  def show          # GET /restaurants/:id
    @ingredient = Ingredient.find(params[:id])
    @dose = Dose.new
  end

  def new           # GET /restaurants/new
    @ingredient = Ingredient.new
  end

  def create        # POST /restaurants
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredient_path(@ingredient)
    else
      render :new # tries to show the new.html
    end
  end
end

class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.valid?
            @recipe.save
            redirect_to recipe_path(@recipe)
        else
            render 'new'
        end
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name,:user_id,ingredient_ids:[])
    end
end

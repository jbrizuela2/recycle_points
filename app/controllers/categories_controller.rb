class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :destroy]

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to materials_path, notice: "Categoría guardada exitosamente"
    else
      flash[:alert] = "Han habido errores y no se ha podido crear la categoría"
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to materials_path, notice: "Categoría actualizada exitosamente"
    else
      flash[:alert] = "No se ha podido actualizar la categoría"
      render :edit
    end
  end

  def destroy
    if @category.destroy
      flash[:notice] = "Categoría eliminada exitosamente"
    else
      flash[:alert] = "Algo ha salido mal, por favor intenta más tarde"
    end
    redirect_to materials_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :description, :color)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end

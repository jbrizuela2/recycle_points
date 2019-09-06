class MaterialsController < ApplicationController
  def index
    @materials = Material.all
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(material_params)
    if @material.save
      flash[:notice] = "Material creado correctamente"
      redirect_to recycle_points_path
    else
      flash[:alert] = "Ha habido un error al crear el material"
      render :new
    end
  end

  private

  def material_params
    params.require(:material).permit(:name, :description)
  end
end

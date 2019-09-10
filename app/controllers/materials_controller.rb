class MaterialsController < ApplicationController
  before_action :set_material, only: [:destroy, :edit, :update]

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

  def edit
  end

  def update
    if @material.update(material_params)
      flash[:notice] = "Material actualizado exitosamente"
      redirect_to recycle_points_path
    else
      flash[:alert] = "Hubo un error, y no se ha podido actualizar el material"
      render :edit
    end
  end

  def destroy
    if @material.destroy
      flash[:notice] = "#{@material.name} eliminado correctamente"
    else
      flash[:alert] = "Algo ha salido mal, y no se ha podido eliminar el material"
    end
    redirect_to recycle_points_path
  end

  private

  def material_params
    params.require(:material).permit(:name, :description)
  end

  def set_material
    @material = Material.find(params[:id])
  end
end

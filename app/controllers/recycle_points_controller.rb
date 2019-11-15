class RecyclePointsController < ApplicationController
  before_action :set_recycle_point, only: [:edit, :update, :destroy]

  def index
    @materials = Material.includes(:recycle_points).order(:name)
    @recycle_points = @materials.reduce({}) { |h, k| h.update(k.id => k.recycle_points) }
  end

  def new
    @recycle_point = RecyclePoint.new
  end

  def create
    @recycle_point = RecyclePoint.new(recycle_point_params)

    if @recycle_point.save
      flash[:notice] = "Punto de reciclaje creado correctamente"
      redirect_to recycle_points_path
    else
      flash[:alert] = "No se ha podido crear el punto de reciclaje"
      render :new
    end
  end

  def edit
    @material_id = params[:material_id]
  end

  def update
    if @recycle_point.update(recycle_point_params)
      flash[:notice] = "Punto de reciclaje actualizado correctamente"
      redirect_to recycle_points_path
    else
      flash[:alert] = "No se ha podido actualizar el punto de reciclaje"
      render :edit
    end
  end

  def destroy
    if @recycle_point.destroy
      flash[:notice] = "#{@recycle_point.name} correctamente eliminado"
    else
      flash[:alert] = "No se ha podido eliminar el punto de reciclaje"
    end
    redirect_to recycle_points_path
  end

  private

  def recycle_point_params
    params.require(:recycle_point)
      .permit(:name,
                  :address,
                  :city,
                  :phone_number,
                  :schedule,
                  :website,
                  :map_location,
                  material_ids: [],)
  end

  def set_recycle_point
    @recycle_point = RecyclePoint.find(params[:id])
  end
end

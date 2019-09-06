class RecyclePointsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @materials = Material.all
    @recycle_points = RecyclePoint.all.group_by(&:material_id)
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

  private

  def recycle_point_params
    params.require(:recycle_point)
      .permit(:name,
                  :address,
                  :city,
                  :phone_number,
                  :schedule,
                  :website,
                  :price,
                  :map_location,
                  :reward,
                  :delivery,
                  :cost,
                  :material_id,)
  end
end

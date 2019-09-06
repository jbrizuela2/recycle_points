class MaterialsController < ApplicationController
  def index
    @materials = Material.all
  end

  def create

  end
end

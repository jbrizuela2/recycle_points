module RecyclePointsHelper
  def label_for_price(point)
    point.reward ? "Paga" : "Costo"
  end
end

# == Schema Information
#
# Table name: materials_recycle_points
#
#  id               :bigint           not null, primary key
#  material_id      :bigint
#  recycle_point_id :bigint
#  price            :float
#  reward           :boolean
#  delivery         :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require "test_helper"

class MaterialsRecyclePointTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

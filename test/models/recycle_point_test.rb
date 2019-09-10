# == Schema Information
#
# Table name: recycle_points
#
#  id           :bigint           not null, primary key
#  name         :string
#  address      :string
#  city         :string
#  phone_number :string
#  schedule     :string
#  website      :string
#  price        :float
#  map_location :string
#  material_id  :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require "test_helper"

class RecyclePointTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

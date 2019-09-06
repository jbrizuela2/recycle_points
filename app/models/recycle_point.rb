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
#  reward       :boolean
#  delivery     :boolean
#  cost         :boolean
#  material_id  :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class RecyclePoint < ApplicationRecord
  belongs_to :material
end

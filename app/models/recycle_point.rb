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

class RecyclePoint < ApplicationRecord
  include PgSearch::Model

  has_and_belongs_to_many :materials
  pg_search_scope :search_by_attributes, 
                  against: [:name, :address, :city],
                  using: {
                    tsearch: { prefix: true }
                  }
end

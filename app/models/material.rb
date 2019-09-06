# == Schema Information
#
# Table name: materials
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Material < ApplicationRecord
  has_many :recycle_points
end

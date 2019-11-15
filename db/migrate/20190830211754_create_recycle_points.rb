class CreateRecyclePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :recycle_points do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone_number
      t.string :schedule
      t.string :website
      t.string :map_location
      t.references :material

      t.timestamps
    end
  end
end

class CreateRecyclePointMaterialsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :materials_recycle_points do |t|
      t.belongs_to :material
      t.belongs_to :recycle_point
      t.boolean :reward
      t.boolean :delivery
      t.boolean :cost

      t.timestamps
    end
  end
end

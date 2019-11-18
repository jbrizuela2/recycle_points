class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :description
      t.string :color, default: "is-info"

      t.timestamps
    end

    create_table :categories_materials, id: false do |t|
      t.belongs_to :material
      t.belongs_to :category
    end
  end
end

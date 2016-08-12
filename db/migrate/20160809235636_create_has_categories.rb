class CreateHasCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :has_categories do |t|
      t.references :ad, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end

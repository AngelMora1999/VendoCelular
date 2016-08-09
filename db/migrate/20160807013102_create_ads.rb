class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      #Datos de la Ad
      t.string :title
      t.text :description
      t.string :brand
      t.integer :price
      t.integer :visit_count

      #Contacto de la Ad
      t.string :region
      t.string :city
      t.string :cellphone
      t.string :phone
      t.string :adress

      #Estado de las Ads
      t.string :state
      t.string :status
      t.string :type

      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end

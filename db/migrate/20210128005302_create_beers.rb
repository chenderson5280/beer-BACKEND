class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :tagline
      t.string :first_brewed
      t.text :description
      t.string :image
      t.float :alcoholLv
      t.string :food_pairing

      t.timestamps
    end
  end
end

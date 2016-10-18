class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :fav_park
      t.decimal :rate

      t.timestamps
    end
  end
end

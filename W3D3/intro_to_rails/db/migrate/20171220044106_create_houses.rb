class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.text :address
      t.integer :person_id

      t.timestamps
    end
  end
end

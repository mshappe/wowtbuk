class CreateWowts < ActiveRecord::Migration[5.2]
  def change
    create_table :wowts do |t|
      t.string :roman
      t.string :pronunciation
      t.string :part_of_speech
      t.text :definition
      t.text :etymology
      t.text :first_appeared

      t.timestamps
    end
  end
end

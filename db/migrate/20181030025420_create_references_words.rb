class CreateReferencesWords < ActiveRecord::Migration[5.2]
  def change
    create_join_table :references, :wowts do |t|
      t.index :reference_id
      t.index :wowt_id
    end
  end
end

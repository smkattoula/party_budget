class CreatePartyItems < ActiveRecord::Migration[6.0]
  def change
    create_table :party_items do |t|
      t.string :category
      t.string :items_name
      t.integer :item_count
      t.integer :price

      t.timestamps
    end
  end
end

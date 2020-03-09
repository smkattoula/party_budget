class AddTierToPartyItems < ActiveRecord::Migration[6.0]
  def change
      add_column :party_items, :tier, :integer
  end
end

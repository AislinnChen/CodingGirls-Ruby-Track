class AddAddressToNamecards < ActiveRecord::Migration
  def change
    add_column :name_cards, :address, :string
  end
end

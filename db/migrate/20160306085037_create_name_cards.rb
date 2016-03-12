class CreateNameCards < ActiveRecord::Migration
  def change
    create_table :name_cards do |t|
      t.string :given_name
      t.string :fax
      t.string :cell_phone

      t.timestamps null: false
    end
  end
end

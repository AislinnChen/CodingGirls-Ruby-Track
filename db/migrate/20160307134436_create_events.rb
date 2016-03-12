class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :session_no
      t.string :event_name
      t.string :date
      t.string :coach_name

      t.timestamps null: false
    end
  end
end

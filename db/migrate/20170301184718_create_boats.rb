class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :max_load
      t.string :current_l
      t.integer :user_id

      t.timestamps
    end
  end
end

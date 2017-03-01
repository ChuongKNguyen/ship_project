class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :max_load
      t.integer :current_l
      t.integer :job_id

      t.timestamps
    end
  end
end

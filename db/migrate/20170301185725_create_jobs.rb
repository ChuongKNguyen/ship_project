class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.boolean :status_job
      t.integer :container
      t.string :cargo
      t.string :origin
      t.string :destination
      t.string :job_name
      t.integer :cost
      t.string :job_description
      t.integer :user_id
      

      t.timestamps
    end
  end
end

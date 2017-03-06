class CreateBoatJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :boat_jobs do |t|
      t.string :boat_id
      t.string :job_id

      t.timestamps
    end
  end
end

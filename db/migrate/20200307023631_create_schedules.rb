class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.text :body
      t.string :place
      t.datetime :start_time
      t.datetime :end_time
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

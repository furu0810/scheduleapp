class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :action
      t.boolean :checked, default: false, null: false
      t.references :schedule, foreign_key: true

      t.timestamps
    end
  end
end

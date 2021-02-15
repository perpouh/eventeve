class CreateSchedule < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date :date
      t.integer :event_id
    end
  end
end

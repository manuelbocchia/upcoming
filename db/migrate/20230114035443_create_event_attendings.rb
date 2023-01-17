class CreateEventAttendings < ActiveRecord::Migration[7.0]
  def change
    create_table :event_attendings do |t|
      t.integer :attendee_id, null: false
      t.integer :attended_events_id, null: false

      t.timestamps
    end
  end
end

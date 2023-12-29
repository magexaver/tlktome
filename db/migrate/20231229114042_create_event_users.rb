# frozen_string_literal: true

class CreateEventUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :events_users, id: false do |t|
      t.uuid    :event_id
      t.uuid    :user_id
      t.integer :role, default: 0

      t.timestamps
    end

    add_index :events_users, %i[event_id user_id], unique: true
  end
end

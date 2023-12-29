# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events, id: :uuid do |t|
      t.string   :name
      t.text     :description
      t.string   :location
      t.datetime :start_date
      t.datetime :end_date
      t.uuid     :event_id
      t.uuid     :user_id

      t.timestamps
    end
  end
end

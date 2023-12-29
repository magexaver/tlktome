# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :events_users, dependent: :destroy
  has_many :users, through: :events_users
end

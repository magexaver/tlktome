# frozen_string_literal: true

class EventsUser < ApplicationRecord
  belongs_to :event
  belongs_to :user

  enum role: { member: 0, moderator: 1, admin: 2 }
end

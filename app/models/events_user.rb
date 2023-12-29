# frozen_string_literal: true

class EventsUser < ApplicationRecord
  belongs_to :event
  belongs_to :user

  enum role: { member: 1, moderator: 2, admin: 3 }
end

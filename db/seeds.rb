# frozen_string_literal: true

user = User.create(
  first_name: FFaker::Name.first_name,
  last_name: FFaker::Name.last_name,
  email: FFaker::Internet.email,
  password: 111_111
)

10.times do
  Event.create(
    name: FFaker::Lorem.word,
    description: FFaker::Lorem.paragraph,
    location: FFaker::Address.street_address,
    start_date: FFaker::Date.forward(10),
    end_date: FFaker::Date.forward(100)
  )
end

Event.find_each do |event|
  EventsUser.create(event:, user:, role: 2)
end

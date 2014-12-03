# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#this should be 100000 but it got interrupted so i tried to resume, also change n value back to n+1
100000.times do |n|
  name = "asdf#{n+1}@asdf.com"
  password = "asdfasdf"
  User.create!(name:  name,
              password:              password,
              password_confirmation: password,)
end

users = User.order(:created_at).take(1)

9.times do |n|
  title = "Fun event " + (n+1).to_s
  event_thumb = n
  venue = "Location "+ (n+1).to_s
  when_at = n.days.from_now
  total_tickets = (n+1)*500
  available_tickets = n*200
  users.each { |user| user.events.create!(title: title, event_thumb: event_thumb,
    venue: venue, when_at: when_at, total_tickets: total_tickets, 
    available_tickets: available_tickets) }

end

user = nil
event = nil
event2 = nil
require 'database_cleaner'
require 'database_cleaner/cucumber'
DatabaseCleaner.strategy = :truncation

Before do
    DatabaseCleaner.start
     user = User.create!(
         name: "asdf@asdf.com",
         password: "asdfasdf",
         password_confirmation: "asdfasdf")
     
     event = user.events.create!(
        title: "event1",
        event_thumb: 2,
        venue: "testvenue",
        total_tickets: 5,
        available_tickets: 4,
        user_id: 1,
        created_at: DateTime.new(2014, 11, 1, 7),
        updated_at: DateTime.new(2014, 11, 2, 8),
        when_at:  DateTime.new(2014, 11, 5, 9))
        
     event2 = user.events.create!(
        title: "event2",
        event_thumb: 2,
        venue: "testvenue",
        total_tickets: 50,
        available_tickets: 40,
        user_id: 1,
        created_at: DateTime.new(2014, 11, 1, 7),
        updated_at: DateTime.new(2014, 11, 2, 8),
        when_at:  DateTime.new(2014, 11, 5, 9))
    
end

Then(/^Special I press$/) do 
    #expect(page).to have_content("Book it!")
    #find("event2").click
    visit "/users/1#event2"
    #visit "/users/1"
end

When(/^I click link "(.*?)"$/) do |item|
    click_link item
end
When(/^I click on "(.*?)"$/) do |item|
    click_on item
end

After do
    DatabaseCleaner.clean
end
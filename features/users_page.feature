  Feature: users page
    
    Scenario: valid user tries to book an event
      #Given I am a valid user
      Then the Sign in page is loaded
      And I fill in "session_name" with "asdf@asdf.com"
      And I fill in "session_password" with "asdfasdf"
      When I press "Log_in"
      Then the user dashboard is loaded
      When I click on "event_btn_2"
      #When Special I press 
      And I should see "Title"
      #When I press "book_it_btn"
      #this is for clicking an event, in this case event 2
      #Then Special I pressA
      #When I press "."
      #And I fill in "order_tickets_purchased" with "1"
      #And I press "Create Order"
      #Then I should see "Order was successfully created."
Feature: Record dinners taken from the Roll Call Attendance entry screen
    As a Teacher I would like to record the type of dinner the learners in my registration group have each day whilst I'm taking Roll Call attendance
    

    Background:
        Given User has a role of type "Teacher"
        And this role has been given access rights to Manage Dinners module in Roles and Access
        
  
    Scenario: Recording dinner types for Learners of My Registration Group
        Given the user is on the "Home" page
        And the "My Registration Group" widget is displayed
        When the user clicks on the "Attendance icon"
        Then the "Attendance Entry" screen is displayed
        When the user clicks on the "Dinners" button
        Then the "Record Dinner" screen is displayed
        And the "list of Learners" associated with this group are displayed on the left hand side
        And a grid for the current week shows
        And the "Dinner Codes" fly out is on the right hand side
        When the user selects the "flyout"
        Then a list of "Dinner Codes" is displayed
        When the user selects a cell 
        And enters a "Dinner Code"
        And then "Saves"
        Then user is returned to the "Attendance Entry Screen"
        
       
    
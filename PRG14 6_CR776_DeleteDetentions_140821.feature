Feature: Delete Detentions
    As a user I would like to delete existing detention Events created in the future and ensure that learners will be removed from the detention
    

    Background:
        Given Saxmundham Free School is used as this has a Behaviour Management model with Detentions already set up
        And the user is logged in as a user with role of "SFS_SLT"
        And the user has added 6 Learners to a detention event
        And the user has selected "Behaviour"
        And then "Detention Settings"
        And then "Create Detentions"
  
  
    Scenario: Delete an existing detention event for a future date
        Given Learners are already assigned to the detention and names are noted
        And the "From Date" is set to a future date
        And the "To Date" is set to the same date as above
        When the user selects a single detention
        And the user clicks on the "Delete Detention Event" button
        Then the user receives a message saying that the Learners will be removed from this detenetion
        And the detention is removed from the screen
        When the user searches for one of the Learners in the detention
        And the user edits this Learner's record
        And the user clicks on the Behaviour tab
        And the user expands the Detention section
        Then the user can see there is no longer a detention record there
        
        
    Scenario: Try to delete multiple Events
        Given the "From Date" is set to a future date
        And the "To Date" is set to the same date as above
        When the user hold down "Shift" and select all detentions
        Then a warning message is displayed saying "Only one event can be Deleted at a time. Please ensure that only one Detention event is selected."

    
    Scenario: Try to delete an Event without selecting the Event first
        Given the "From Date" is set to a future date
        And the "To Date" is set to the same date as above
        When the user clicks on the "Delete Detention" button   
        Then a warning message is displayed saying "No record has been selected. Please select event which you wish to delete"
  
  
    Scenario: Try to delete an event in the past
        Given the "From Date" is set to a past date
        And the "To Date" is set to the same date as above
        When the user selects a detention
        And the user clicks on the "Delete Detention" button      
        Then a warning message is displayed saying "The Detention Event is Past or future with attendance recorded and cannot be deleted"

   
   Scenario: Try to delete an event in the in the future with Attendance recorded
        Given the "From Date" is set to a future date
        And the "To Date" is set to the same date as above
        When the user selects a detention
        And the user clicks on the "Delete Detention" button  
        Then a warning message is displayed saying "The Detention Event is Past or future with attendance recorded and cannot be deleted"

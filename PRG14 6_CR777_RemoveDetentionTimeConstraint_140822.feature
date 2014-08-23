Feature: Allow users to record attendance for detentions in the future
    As a user I would like the ability to record attendance for a detetion event in the future 
    as I may know that a learner will not be present for it

    Background:
        Given Saxmundham Free School is used as this has a Behaviour Management model with Detentions already set up
        And the user is logged in as a user with role of "SFS_SLT"
        And 6 Learners are already assigned to a detention
        And names of Learners and the detention event are noted


    Scenario: Record attendance for a detention in the future 
        Given User has clicked on "Behaviour"
        And then "Detention Attendance"
        And the "From Date" is set to a future date
        And the "To Date" is set to the same date as above
        When the user selects "Attendance icon"
        And enters attendance for all Learners
        And clicks "Submit"
        Then the user receives a Detention Attendance Confirmation message
        When the user clicks "OK"
        Then the user receives a Success message to confirm the attendance marks have been saved
        
        
    Scenario: Record attendance for a detention in the future via the Detention Slip Widget
        Given User has added the "Detention Slip Widget" to their Home page
        And the "From Date" is set to a future date
        And the "To Date" is set to the same date as above
        When the user clicks "Find"
        Then the Detention record shows
        When the user clicks on "Attendance icon"
        And enters attendance for all Learners
        And clicks "Submit"
        Then the user receives a Detention Attendance Confirmation message
        When the user clicks "OK"
        Then the user receives a Success message to confirm the attendance marks have been saved
        
        
    Scenario: Attendance shows for the detention event in the Learner record
        Given Attendance has been recorded for a future detention event
        And the user has searched for a Learner from this detention event
        And the user is viewing this Learner's record in Edit mode
        When the user clicks on the Behaviour tab
        And the user expands the "Detention Data" section
        Then the user can see the "Attendance mark" recorded for this detention
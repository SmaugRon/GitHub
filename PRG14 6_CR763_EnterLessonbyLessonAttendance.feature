Feature: Enter Lesson by lesson Attendance as a Teacher
    As a Teacher I would like to record lesson by lesson attendance for my Teaching group/s
    

    Background:
        Given "Crofton School" is used for this as it has staff associated to multiple teaching groups
        And the user id used is "JoSalsb"
        
        
  
    Scenario: Functionality of the My Teaching Group widget
       Given User has more than one Teaching Group associated to them
       When the user logs in to Progresso
       Then the "My Teaching Groups Widget" is visible
       And by default, it is populated with the "Teaching Groups" of the user
       And by default, they are listed in "Ascending" order
       When the user clicks on the "Teaching Group column header"
       Then the Teaching groups are displayed in "Descending" order
       When the user select the "Filter" icon
       Then a "Filter dropdown" is displayed
       And user can filter their teaching groups
       When the user select the "column seperator"
       Then the user can "Resize" the width of the column
       When the user enters a Teaching Group name in the "Search" box
       And clicks "Find"
       Then all teaching groups within the school are searched
       And this list matches the "Search criteria"
       When the user clicks on "Reset"
       Then the "default list" of teaching groups is displayed
       And they are in "Ascending" order
       
       
    Scenario: Functionality of Enter Lesson by Lesson Attendance Screen
        Given the user is still looking at the "My Teaching Group" widget
        When the user selects the "Attendance" icon
        Then the "Attendance Entry" screen is displayed
        And only "Active" learners are displayed
        And these Learners have a "Status of active" in their Learner record today
        And the default view is "Take lesson by lesson"
        And the "current session" is highlighted
        When the user depresses "CTRL" and selects multiple learners
        Then the records are highlighted to show they have been selected
        When the learner has a "positive behaviour" event associated to them
        Then a "green" circle is displayed adjacent to their name
        When the learner has a "negative behaviour" event associated to them
        Then a "red" circle is displayed adjacent to their name
        When the learner has a "neautral behaviour" event associated to them
        Then a "yellow" circle is displayed adjacent to their name
        When the user has a combination of behaviour events
        Then the circle displayed will be like a pie chart of colours
        When the user click on the "Learner name"
        Then the "learner record" is displayed
        And this is focused on the "Attendance tab"
        When the user clicks the "Back arrow" in the browser
        Then the user is returned to the "Roll Call" screen
        When the user clicks on the column header "Name"
        Then the names are displayed in "Descending order"
        When the user clicks on the column header "Name" again
        Then the names are displayed in "Ascending order"
        When the users clicks on the blue "Attendance & Colour Codes" icon
        Then the full "list of Attendance & Colour Codes" is displayed
        And the "Authorised Absence" is displayed on the LHS
        And the "Unauthorised" is displayed at the top RHS
        And the "Colour Key" is displayed at the bottom RHS 
        When the user clicks on the blue "Attendance & Colour Codes" icon again
        Then the list of codes is "hidden"
    
    
    Scenario: Looking at the Learner List view
        Given the user is still looking at the "Attendance Entry screen"
        When the user selects "Learner List View" from the top menu bar
        Then the list of Learners for this teaching group is displayed
        And columns show for "Reg Group", "Course", "Year", "M/F", "Ethnicity", "House"
        And the "Medical" column shows an icon for those learners with Medical Alert checked in Learner record
        And "LAC", "G&T", "FSM", "SEN" columns show tick's for those learners who meets these conditions
        And "Roll Call %" and "Lesson %" show the percentage attendance for the Learners
        When the user clicks on the "filter icon" in the "M/F" column
        Then the "Filter Dialogue" box is displayed
        When the user enters "Is equal to F"
        And clicks on "Filter"
        Then the list only displays "Female" learners
        When the user clicks on the "filter icon" again in the "M/F" column 
        And then clicks "Clear" in the filter dialogue box
        Then the list displays both "Male" and "Female" again
        When the user select "Taking lesson by lesson" from the top menu bar
        Then the user is returned to the "Attendance Entry" screen
            
        
   Scenario: Entering attendance via the Lesson by lesson Attendance screen
        Given the user is still looking at the "Attendance Entry screen"
        When the user enters absence codes in the highlighted session
        And the clicks "Save"
        Then a confirmation message is received
        And this shows how many Learners will be marked "Present"
        And how many Learners are marked as "Absent"
        When the user clicks "OK"
        Then a confirmation message is received to say changes have been save to the database
        When the user clicks "OK" to this
        Then the grid displays the newly added attendance marks
        
       
    Scenario: Entering Lesson by Lesson attendance via Photo view
        Given the user is still looking at the "Attendance Entry screen"
        When the user selects "Photo View"
        Then the screen is refreshed
        And photos are displayed of Learners within the group
        And the "Teaching Group code" and "name" are displayed above the photos
        And the "date" and "period time" are displayed above the photos
        When the user selects a Learner
        Then the card turns "Blue" to show it is selects
        When the user depresses "CTRL"
        And then clicks on several cards
        Then multiple learners are selected
        When the user enters attendance code "N" for the selected learners
        And then clicks "Save"
        Then a confirmation message is received
        And this shows how many Learners will be marked "Present"
        And how many Learners are marked as "Absent"
        When the user clicks "OK"
        Then a confirmation message is received to say changes have been save to the database
        When the user clicks "OK" to this
        Then the Photo View displays the newly added attendance marks
        When the user toggles to "Week" view
        Then an error message is received saying this is not available for "Photo" view
        When the user select s "Take Lesson by Lesson"
        Then the "Attendance Entry Grid" is displayed
        
       
    Scenario: Add a note to an absence
        Given the user is looking at the "Attendance Entry screen"
        When the user clicks in an existing absence
        And clicks the "Details" button
        Then a window is displayed
        And this shows a section for "Notes"
        And a section for "Minutes Late"
        And a section to "Attach a dDocument"
        When the user types in a note
        And then clicks "Save"
        And clicks "OK"
        Then an icon is displayed in the cell to show a note has been added
       
       
       
       
       
       
       
       
       
       
       
       
       
       
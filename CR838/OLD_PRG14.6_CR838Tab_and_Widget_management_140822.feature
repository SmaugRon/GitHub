Feature: Tab and widget management
    In Order to manage tabs and widgets for user roles
    As a user of progresso with access to the System -> Setup Users -> Tabs and Widgets
	I should be able to create a tab / set of tabs for a user role. 
    I should also be able to mark a tab as a default which means the tab will be shown to the user at the point on login
    I should be able to define which widgets appear on the tab(s)
    I should also be able to define which widgets cannot be deleted from a tab by an end user
    
    PREREQUSITES: Prior to testing please take a note of the tabs defined for a user role Progresso version 14.5
                  I have used X for the username as I do not know the available user accounts at the time of testing
                  I have used 123 for the role name as I do not know the available roles at the time of testing
                  I have used ABC, DEF, etc for widget naming purposes as I do not know the available widgets at the time of testing
          
Scenario: Creating a set of tabs and widgets for a user role
	Given that the user has logged into progresso
    And the user is a member of role that has access to the System -> Setup Users -> Tabs and Widgets
    When the user clicks on on the menu option System
    Then the screen will display the menu options for system that are available to the users role
    And the menu item Tabs and Widgets should be listed under System -> Setup Users
    When the user clicks the Tabs and Widgets link
    Then the Tabs and Widgets screen will be displayed
    And the columns listed will be "Role", "Tab Name", "Widget 1", "Widget 2", "Widget 3","Widget 4", "Widget 5", "Widget 6","Widget 7", "Widget 8", "Widget 9","Widget 10", "Default Tab"
    When the user has selected role "123"
    Then the available widgets in the widget drop down should display a list of widgets available to the users role
    When the user types in "Attendance" for the name of the tab
    And selected widget "ABC" from the widget dropdown list for the the first widget for the "Attendance" tab
    And the user has marked the widget as "Manadatory"
    And selected widget "DEF" from the widget dropdown list for the the second widget for the "Attendance" tab
    And the user does NOT mark the widget as "Manadatory"
    And the user clicks "Save"
    Then the system will display a warning message "Please define a manadatory tab for each role"
    When the user has clicked "Ok" to the warning message
    Then the message will disappear
    And the Tabs and Widgets screen will be displayed
    When the user has selected the "Default Tab" option for the "Attendance" tab
    And the user has moved to the second line in the list
    And the user has selected the role "123"
    And the user types in "Behaviour" for the name of the tab
    And the user has selected widget "GHI" from the widget dropdown list for the the first widget for the "Behaviour" tab
    Then the "Default Tab" option will not be selectable for the "Behaviour" tab
    When the users clicks "Save"
    Then the system will save the configured values
    
Scenario: Viewing the tabs and widgets
    Given that the user "X" has logged into progresso
    And the user account belongs to role "123"
    When the user views the dashboard
    Then the first tab of the dashboard will be the "Attendance" tab
    And the widgets "ABC" and "DEF" will be located on the tab
    And the second tab will be the "Behaviour" tab
    And the other tabs listed will be as previously defined in progresso version 14.5
    
Scenario: Deleting widgets
    Given that the user "X" has logged into progresso
    And the user account belongs to role "123"
    When the user views the dashboard
    Then the first tab of the dashboard will be the "Attendance" tab
    And the widgets "ABC" and "DEF" will be located on the tab
    And the second tab will be the "Behaviour" tab
    And the other tabs listed will be as previously defined in progresso version 14.5
    When the user clicks the settings icon on the "ABC" widget
    Then a popout menu will appear
    When the user selects the "Delete" option
    Then the system will display a warning message "The widget cannot be deleted as it has been marked as a mandatory widget"
    When the user clicks "Ok" to the warning message
    And the "Attendance" tab will be displayed
    And the widgets "ABC" and "DEF" will be located on the tab
    When the user clicks the settings icon on the "DEF" widget
    Then a popout menu will appear
    When the user selects the "Delete" option
    Then the system will display a warning message "Are you sure you want to delete this widget?"
    When the user clicks "No" to the warning message
    Then the warning message will disappear 
    And the "Attendance" tab will be displayed
    And the widgets "ABC" and "DEF" will be located on the tab
    When the user clicks the settings icon on the "DEF" widget
    Then a popout menu will appear
    When the user selects the "Delete" option
    Then the system will display a warning message "Are you sure you want to delete this widget?"
    When the user clicks "Yes" to the warning message
    Then the warning message will disappear 
    And the "Attendance" tab will be displayed
    And the widget "ABC" will be located on the tab
    When the user clicks the "Behaviour" tab 
    Then the "Behaviour" tab will render
    And the widget "GHI" will be located on the tab
    When the user clicks the settings icon on the "GHI" widget
    Then a popout menu will appear
    When the user selects the "Delete" option
    Then the system will display a warning message "You cannot delete this widget. Tabs must have at least one widget"
    When the user clicks "OK" to the warning message
    Then the warning message will disappear 
    And the Behaviour tab will be displayed
    And the widget "GHI" will be located on the tab
    
Scenario: Deleting tabs
    Given that the user "X" has logged into progresso
    And the user account belongs to role "123"
    When the user views the dashboard
    Then the first tab of the dashboard will be the "Attendance" tab
    And the widget "ABC" will be located on the tab
    And the second tab will be the "Behaviour" tab
    And the other tabs listed will be as previously defined in progresso version 14.5
    When the user clicks "Delete Tab" option
    Then the system will display a warning message "You cannot delete this tab as it has been marked as mandatory"
    When the user clicks "Ok" to the warning message
    Then the warning message will disappear 
    And the "Attendance" tab will be displayed
    When the user clicks the "Home" tab (as previously defined in progresso version 14.5)
    Then the "Home" tab will be displayed
    And the widgets shown on the tab will be as previously defined in progresso version 14.5
    When the user clicks "Delete Tab" option
    Then the system will display a warning message "Are you sure you want to delete this tab?"
    When the user clicks "No" to the warning message
    Then the warning message will disappear 
    And the "Home" tab will be displayed with its associated widgets
    When the user clicks "Delete Tab" option
    Then the system will display a warning message "Are you sure you want to delete this tab?"
    When the user clicks "Yes" to the warning message
    Then the warning message will disappear 
    And the default "Attendance" tab will be displayed
    And the "Home" tab will no longer be visible to the user
    
Scenario: Verify dashboard deletions
    Given that user "X" is in NOT into progresso
    And user "X" is viewing the Progresso login page
    And the user account belongs to role "123"
    When user "X" logs into Progresso
    Then the users dashboard will be displayed
    And the "Attendance" tab will be rendered
    And the widget "ABC" will be located on the tab
    And the second tab will be the "Behaviour" tab
    And the "Home" tab will not be visible to the user
    And the other tabs listed will be as previously defined in progresso version 14.5 with the exception of "Home"
    
    
 
    
    
    
    
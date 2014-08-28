Feature: OSR Deleting saved group by selections
	In Order to delete unwated saved group by selections
	As a user who has access to on screen reporting
	I should be able to delete any unwanted saved group by selections that have been saved for a saved column selection
    
    PREREQUISITES: User has access to Reports -> On screen reporting
                   I am refering to the selected report category as ABC as I do not know the list of available report categories
                   I am refering to the selected report as 123 as I do not know the names of available reports
                   I am refering selected columns as A1, A2, etc as I do not know the names of the available columns
    
Scenario: Deleting a group by selection
    Given that user has logged into Progresso with an account that has access to OSR
    And the user has clicked the menu option "Reports -> Launch on screen reporting"
    Then a new window will open 
    And at the top of the page there will be a report category drop down
    And there will be a report name drop down
    And there will be a section for default report columns
    When the user has selected "ABC" for the report category
    Then a list of available reports that have been attributed to category "ABC" / shared to the logged in user will load
    And be available in the report name drop down list
    When the user has selected the report "123" from the report name drop down list
    Then a set of default columns will be loaded into the report columns section
    And there will be a section for "Saved column selection"
    And there will be a section for "Saved group by selection"
    And a section for report filters will render
    When the user clicks the "Saved column selection" drop down
    Then a list of saved column selections will be listed in the drop down
    When the user selects "SCS 1" from the drop down
    Then the columns saved against "SCS 1" will be loaded into the report columns field
    And the "saved group by selection" drop down will populate
    When the user clicks on the "Manage group by selection" button
    Then a "Manage group by selections" modal will appear
    And the window will contain a group by selection drop down
    And the window will contain a "Delete" button
    And the window will contain a "Cancel" button
    When the user clicks the "Cancel" button
    Then the "Manage group by selections" modal will disappear 
    And the OSR screen will be in the same state prior to the user clicking the "Manage group by selections" button
    When the user clicks on the "Manage group by selection" button
    Then a "Manage group by selections" modal will appear
    When the user selects "GS 2"
    And clicks the "Delete" button
    Then a warning message "Are you sure you want to delete the group by selection GS 2?" will be displayed to the user
    And the warning message will contain button called "Yes"
    And the warning message will contain button called "No"
    When the user clicks the "No" button 
    Then the warning message will close
    And the user will be shown "Manage group by selections" modal
    When the user selects "GS 2"
    And clicks the "Delete" button
    Then a warning message "Are you sure you want to delete the group by selection GS 2?" will be displayed to the user
    And the warning message will contain button called "Yes"
    And the warning message will contain button called "No"
    When the user clicks the "Yes" button 
    Then the warning message will close
    And the group by selection "GS 2" will be deleted
    
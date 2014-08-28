Feature: OSR Deleting saved column selections
	In Order to delete any unwated saved report selections
	As a user who has access to on screen reporting
	I should be able to delete saved column selections from a report
    
    PREREQUISITES: User has access to Reports -> On screen reporting
                   I am refering to the selected report category as ABC as I do not know the list of available report categories
                   I am refering to the selected report as 123 as I do not know the names of available reports
                   I am refering selected columns as A1, A2, etc as I do not know the names of the available columns
    
Scenario: Deleting a saved column selection
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
    And a section for report filters will render
    And there will be a section for "Saved column selection"
    And there will be a section for "Saved group by selection"
    When the user clicks the "Manage column selections" button
    Then a "Manage column selections" modal will appear
    And the window will contain a column selection drop down
    And the window will contain a "Delete" button
    And the window will contain a "Cancel" button
    When the user clicks the "Cancel" button
    Then the "Manage column selections" modal will disappear 
    And the OSR screen will be in the same state prior to the user clicking the "Manage column selections" button
    When the user clicks on the "Manage column selections" button
    Then a "Manage column selections" modal will appear
    When the user selects "SCS 1"
    And clicks the "Delete" button
    Then a warning message "Are you sure you want to delete the column by selection SCS 1? All associated group by selections will also be deleted." will be displayed to the user
    And the warning message will contain button called "Yes"
    And the warning message will contain button called "No"
    When the user clicks the "No" button 
    Then the warning message will close
    And the user will be shown "Manage group by selections" modal
    When the user selects "GS 2"
    And clicks the "Delete" button
    Then a warning message "Are you sure you want to delete the column by selection SCS 1? all associated group by selections will also be deleted." will be displayed to the user
    And the warning message will contain button called "Yes"
    And the warning message will contain button called "No"
    When the user clicks the "Yes" button 
    Then the warning message will close
    And the column selection "SCS 1" will be deleted
    And all associated group by selections will be deleted ("GS 1")
 
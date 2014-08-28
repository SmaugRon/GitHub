Feature: OSR Saving column selections
	In Order to save a column selection in on screen reporting
	As a user who has access to on screen reporting
	I should be able to run a report that contains columns that I have selected from the dataset and save the selection for future use when I run the report in the future
    
    PREREQUISITES: User has access to Reports -> On screen reporting
                   I am refering to the selected report category as ABC as I do not know the list of available report categories
                   I am refering to the selected report as 123 as I do not know the names of available reports
                   I am refering selected columns as A1, A2, etc as I do not know the names of the available columns
 
Scenario: Saving column selections
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
    When the user clicks in the report columns field
    Then a list of available columns will be listed in a dropdown
    When the user selects column "A1"
    Then the column "A1" attribute will appear in the report columns field along with the default columns
    When the user has set the required filters
    And the user has clicked the "View" button
    Then the report will render in a kendo grid
    And the grid will show data for the selected report columns
    And at the top of the grid there will be a group by section
    And at the bottom of the grid there will be an "Export to CSV" button
    And at the bottom of the grid there will be a "Print" button
    And at the bottom of the grid there will be a "Save column selection" button
    When the user clicks on the "Save column selection" button
    Then a "Save column selection" modal window will open
    And the window will have a field for the name of the column selection
    And the window will have an "Ok" button
    And the window will have a "Cancel" button
    When the user clicks the "Cancel" button
    Then the modal window will close and the OSR screen will be in the same state prior to the user clicking the "Ok" button
    When the user clicks on the "Save column selection" button
    Then a "Save column selection" modal window will open
    When the user has typed "SCS 1" as the name for the selection 
    And clicked the "Ok" button
    Then the "Save column selection" modal window will disappear
    And the column selection will be saved against the name "SCS 1"
    When the user clicks the "Edit" button
    Then the grid will disappear
    And the page will render the report selection section
    And the page will show the report filters section
    And the page will display the report save selections section
    When the user clicks in the report columns field
    Then a list of available columns will be listed in a dropdown
    When the user selects column "A2"
    Then the column "A2" attribute will appear in the report columns field along with the default columns and column "A1" (from previous selection)
    And the user has clicked the "View" button
    Then the report will render in a kendo grid
    And the columns rendered will include columns "A1" and "A2"
     When the user clicks on the "Save column selection" button
    Then a "Save column selection" modal window will open
    When the user has typed "SCS 2" as the name for the selection 
    And clicked the "Ok" button
    Then the "Save column selection" modal window will disappear
    And the column selection will be saved against the name "SCS 2"
    
Scenario: Viewing a report with saved column selections
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
    When the user clicks the "Saved column selection" drop down
    Then a list of saved column selections will be listed in the drop down ("SCS 1" and "SCS 2")
    When the user selects "SCS 1" from the drop down
    Then the columns saved against "SCS 1" will be loaded into the report columns field (default columns and column "A1")
    When the user has set the required filters
    And the user has clicked the "View" button
    Then the report will render in a kendo grid
    And the grid will show data for the selected report columns
    And at the bottom of the grid there will be an "Export to CSV" button
    And at the bottom of the grid there will be a "Print" button
    And at the bottom of the grid there will be a "Save column selection" button
    And at the bottom of the grid there will be a "Save group by selection" button
        

    

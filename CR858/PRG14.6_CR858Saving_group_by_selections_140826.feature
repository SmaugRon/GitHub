Feature: OSR Saving group by selection
	In Order to save selected group by column properties for an on screen report
	As a user who has access to on screen reporting
	I should be able to run a report and save the column grouping that I have selected for the report to be able to use them when I run the report in the future
    
    PREREQUISITES: User has access to Reports -> On screen reporting
                   I am refering to the selected report category as ABC as I do not know the list of available report categories
                   I am refering to the selected report as 123 as I do not know the names of available reports
                   I am refering selected columns as A1, A2, etc as I do not know the names of the available columns
    
Scenario: Saving a group by selection
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
    Then a list of saved column selections will be listed in the drop down
    When the user selects "SCS 1" from the drop down
    Then the columns saved against "SCS 1" will be loaded into the report columns field
    When the user has set the required filters
    And the user has clicked the "View" button
    Then the report will render in a kendo grid
    And the grid will show data for the selected report columns
    And at the bottom of the grid there will be an "Export to CSV" button
    And at the bottom of the grid there will be a "Print" button
    And at the bottom of the grid there will be "Save column selection" button
    And at the bottom of the grid there will be "Save group by selection" button
    When the user drags and drops column "A1" to the Group By section of the grid
    Then grid will re-render and show the data grouped by the values of the "A1" column
    When the user clicks on the "Save group by selection" button
    Then a "Save group by selection" modal window will open 
    And the window will have a field for the name of the group by selection
    And the window will have an "Ok" button
    And the window will have a "Cancel" button
    When the user clicks the "Cancel" button
    Then the modal window will close and the OSR screen will be in the same state prior to the user clicking the "Ok" button
    When the user clicks on the "Save group by selection" button
    Then a "Save group by selection" modal window will open
    When the user has typed "GS 1" as the name for the selection 
    And clicked the "Ok" button
    Then the "Save group by selection" modal window will disappear
    And the group by selection will be saved against the name "GS 1"
    And the group by selection "GS 1" will be linked to the saved column selection "SCS 1"
    When the user drags and drops column "A2" to the Group By section of the grid
    Then grid will re-render and show the data grouped by the values of both "A1" and "A2" column
    When the user clicks on the "Save group by selection" button
    Then a "Save group by selection" modal window will open 
    When the user has typed "GS 2" as the name for the selection 
    And clicked the "Ok" button
    Then the "Save group by selection" modal window will disappear
    And the group by selection will be saved against the name "GS 2"
    And the group by selection "GS 2" will be linked to the saved column selection "SCS 1"

Scenario: Viewing a report with a saved column and saved group by selections
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
    When the user clicks on the "Saved group by selection" drop down 
    Then the drop down list will contain one value "GS 1"
    When the user selects "GS 1" from the "Saved group by selection" drop down 
    Then the group by selection of the grid will populate with the saved group by value ("A1")
    When the user has set the required filters
    And the user has clicked View
    Then the report will render in a kendo grid
    And the grid will show data for the selected report columns
    And the data will be grouped by the "A1" column value
    And at the bottom of the grid there will be an "Export to CSV" button
    And at the bottom of the grid there will be a "Print" button
    And at the bottom of the grid there will be "Saved column selection" button
    And at the bottom of the grid there will be "Save group by selection" button
    

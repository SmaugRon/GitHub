Feature: OSR Viewing a report
	In Order to run reports directly within the progresso application
	As a user who has access to on screen reporting
	I should be able to run a report within the application, without the need to run a typical SSRS report
    
    PREREQUISITES: User has access to Reports -> On screen reporting
                   I am refering to the selected report category as ABC as I do not know the list of available report categories
                   I am refering to the selected report as 123 as I do not know the names of available reports
                   I am refering selected columns as A1, A2, etc as I do not know the names of the available columns
    
Scenario: Viewing a report
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
    And at the bottom of the grid there will be an "Export to Excel" button
    And at the bottom of the grid there will be a "Print" button
    And at the bottom of the grid there will be a "Save column selection" button
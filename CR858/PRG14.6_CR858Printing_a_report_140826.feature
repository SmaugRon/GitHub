Feature: OSR Printing
	In Order to print the result set from an on screen report
	As a user who has access to on screen reporting
	I should be able to print the result set from a report that I have run
    
    PREREQUISITES: User has access to Reports -> On screen reporting
                   I am refering to the selected report category as ABC as I do not know the list of available report categories
                   I am refering to the selected report as 123 as I do not know the names of available reports
                   I am refering selected columns as A1, A2, etc as I do not know the names of the available columns
    
Scenario: Printing a report
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
    When the user has clicked the "View" button
    Then the report will render in a kendo grid
    When the user clicks the "Print" button
    Then the print controls window will open
    When the user has selected print options
    And clicked "Print" (or "OK")
    Then the report should print to the selected device
    And the output should include all of the result set
    And it should be formated as per the users selections

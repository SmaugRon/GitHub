Feature: OSR Export to Excel
	In Order to export data from a report
	As a user who has access to on screen reporting
	I should be able to export the result set from a report that I have run to an Excel format file
    
    PREREQUISITES: User has access to Reports -> On screen reporting
                   I am refering to the selected report category as ABC as I do not know the list of available report categories
                   I am refering to the selected report as 123 as I do not know the names of available reports
                   I am refering selected columns as A1, A2, etc as I do not know the names of the available columns
    
Scenario: Exporting a report
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
    When the user clicks the "Export to Excel" button
    Then the system will prompt the user that the file has been created
    And the file format will be .xlsx
    When the user has saved the file
    And the user has double clicked the file
    Then Excel will open
    And the data rendered in excel will be the same as the report result set.
Feature: Room utilisation report for Study Group
	In Order to analyse room utilisation for a school within the Study Group cluster
	As a user within the study group cluster or a school that belongs to a study group cluster
	I should be able to run a report that gives me room utililisation figures
    
    NOTES: The report is only available to Study Group clusters and schools
    
Scenario: Viewing the room utilisation report at school level
	Given that the user has logged into progresso with a user account that has access to the reports menu
    And the Room Utilisation report has been shared to the users role
    When the user click on the Reports menu option
    Then the reports list will open
    And the list will show a list of favourite reports (if favourite reports have been setup) otherwise there will be no reports listed
    When the user clicks on the report category Timetable
    Then a list of Timetable reports will be listed
    When the user has changed the records per page limit to its maximum listed values
    Then the list will re-render to show a list of reports limited to the selected records per page number
    When the user finds and selects the Room Utilisation Report
    Then a new window will open
    And the window will display the report parameters and controls
    When the user has selected a value for the From Date parameter 
	And the user has selected a value for the To Date parameter
    And the user has selected the school name for the School parameter
    And the user has clicked View Report
    Then the report should render
    And the report should show a row for the school
    And there should be a column grouped on week
    And it should show a summary section to the right of the weeks column(s)
    When the user has expanded a column
    Then the report should show days within the expanded week
    When the user has expanded the school row
    Then the report will show a list of rooms associated to the school
    When the user looks at the summary section
    Then the report should show four columns (Timetabled periods / Week, Total TT periods / Week, Utilisation by Period and Avg Class Size)
    And the figures in the Timetabled periods / week should match the values for the date range
    And the figures in the Total TT periods / week should match the values for the date range
    And the Utilisation by Period values should be correct (Timetabled periods / Week divided by Total TT periods / Week and shown as a percentage)
    And the Avg Class Size values should be correct
    
Scenario: Viewing the room utilisation report at school cluster level
	Given that the user has logged into progresso with a user account that has access to the reports menu
    And the Room Utilisation report has been shared to the users role
    When the user click on the Reports menu option
    Then the reports list will open
    And the list will show a list of favourite reports (if favourite reports have been setup) otherwise there will be no reports listed
    When the user clicks on the report category Timetable
    Then a list of Timetable reports will be listed
    When the user has changed the records per page limit to its maximum listed values
    Then the list will re-render to show a list of reports limited to the selected records per page number
    When the user finds and selects the Room Utilisation Report
    Then a new window will open
    And the window will display the report parameters and controls
    When the user has selected a value for the From Date parameter 
	And the user has selected a value for the To Date parameter
    And the user has selected the values for the School parameter
    And the user has clicked View Report
    Then the report should render
    And the report should show a page per school
    And the report should show a row for the school
    And there should be a column grouped on week
    And it should show a summary section to the right of the weeks column(s)
    When the user has expanded a column
    Then the report should show days within the expanded week
    When the user has expanded the school row
    Then the report will show a list of rooms associated to the school
    When the user looks at the summary section
    Then the report should show four columns (Timetabled periods / Week, Total TT periods / Week, Utilisation by Period and Avg Class Size)
    And the figures in the Timetabled periods / week should match the values for the date range
    And the figures in the Total TT periods / week should match the values for the date range
    And the Utilisation by Period values should be correct (Timetabled periods / Week divided by Total TT periods / Week and shown as a percentage)
    And the Avg Class Size values should be correct
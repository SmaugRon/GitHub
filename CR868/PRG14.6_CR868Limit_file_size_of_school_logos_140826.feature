Feature: Limit size of school logo images ("Establishment" and "Report")
	In Order to verify the size of school logo images are limited
	As a user who has access to Progresso
	I should NOT be able upload an image greater that 120kb in size
    
    PREREQUISITES: The user has two copies of each image one greater than 120kb in size and the other less than 120kb in size
    
Background:
    Given the user has logged into Progresso
    And the user has access to the "System -> Module Settings -> General"
    When the user clicks the menu item "System"
    Then the page will re-render to show the available menu options
    When the user clicks the menu item "General" located under "Module Settings"
    Then the page will re-render and show a grouped list of sections
    
Scenario: Uploading an image for the Establishment logo
    Given the user clicks the "Dashboard" section
    Then the section will expand
    When the user clicks the "Browse" button for the "Establishment Logo"
    Then a "Choose File to Upload" window will open
    When the user navigates to and selects the file that is greater than 120kb in size
    And clicks the "Open" button
    Then the "Choose File to Upload" window will close
    And the application will show an inline message stating the file size is to large to be uploaded
    When the user clicks the "Browse" button for the "Establishment Logo"
    Then a "Choose File to Upload" window will open
    When the user navigates to and selects the file that is less than 120kb in size
    And clicks the "Open" button
    Then the "Choose File to Upload" window will close
    And the file will be uploaded to the environment
    And the user will see the file name below the establishment logo field
    And the user will have to wait up to 24 Hours before seeing the new logo within the application
    
Scenario: Uploading an image for the Report logo
    Given the user clicks the "General" section
    Then the section will expand
    When the user clicks the "Browse" button for the "Report Logo"
    Then a "Choose File to Upload" window will open
    When the user navigates to and selects the file that is greater than 120kb in size
    And clicks the "Open" button
    Then the "Choose File to Upload" window will close
    And the application will show an inline message stating the file size is to large to be uploaded
    When the user clicks the "Browse" button for the "Report Logo"
    Then a "Choose File to Upload" window will open
    When the user navigates to and selects the file that is less than 120kb in size
    And clicks the "Open" button
    Then the "Choose File to Upload" window will close
    And the file will be uploaded to the environment
    And the user will see the file name below the report logo field
    And the user will have to wait up to 24 Hours before seeing the new logo in reports that use the report logo image example "Individual Learner Roll Call Details"
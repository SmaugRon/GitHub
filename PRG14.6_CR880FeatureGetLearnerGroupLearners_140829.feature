Feature: Change to schema of methods in the Progresso API
In order to return details for learners who are associated to a learner group
As a user of the Progresso API with full access read/write access rights to a school 
I should be able to call a method called GetLearnerGroupLearnerByLearnerGroupId from the Miscellaneous web service

Background:
Given the user has a client that can call the Progresso API
And the user has imported the Learner Record web service
And has a configuration containing a valid Partner Licence key and SchoolId
And the user has is logged into Progresso
And has access rights to the Learner Groups

Scenario: 1 Calling GetLearnerGroupLearnerByLearnerGroupId for all groups
Given the background
And the user is making a call to the GetLearnerGroupLearnerByLearnerGroupId
When the user sets the entityId parameter to null
And the user sets the startDate parameter to the start date of the current academic year
And the user sets the endDate parameter to the end date of the current academic year
And invokes the method
Then the response contains a record for each Leaner associated to each group
And only groups that are active between the dates are returned


Scenario: 2 Calling GetLearnerGroupLearnerByLearnerGroupId for a single group
Given the background
And the user is making a call to the GetLearnerGroupLearnerByLearnerGroupId
When the user sets the entityId parameter to a valid groupId
And the user sets the startDate parameter to the start date of the current academic year
And the user sets the endDate parameter to the end date of the current academic year
And invokes the method
Then the response contains a record for each Leaner associated to the group passed


Scenario: 3 Calling GetLearnerGroupLearnerByLearnerGroupId for all groups
Given the background
And the user is making a call to the GetLearnerGroupLearnerByLearnerGroupId
When the user sets the entityId parameter to null
And the user sets the startDate parameter to a date outside of any future academic year
And the user sets the endDate parameter to a date outside of any future academic year
And invokes the method
Then the response contains no record

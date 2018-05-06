Feature: User comments on article
  As a user
  in order to show my opinion
  I would like to be able to comment on articles and have the option of leaving my email with my comment
 
Background:
  Given the following articles exist in the database
      | title                    | content              |
      | A breaking news article! | Lorem ipsum...       |
  And I visit the site

Scenario: User can leave a comment
  Given I click "Show" button
  And I fill in "Name" with "Agnes"
  And I fill in "Comment" with "This is my comment"
  When I click "Create Comment" button
  Then I should see "This is my comment"

Scenario: User leaves a field empty [Sad Path]
  Given I click "Show" button
  And I fill in "Name" with ""
  And I fill in "Comment" with ""
  When I click "Create Comment" button
  Then I should see "Commenter can't be blank" 
  And I should see "Body can't be blank"

  Scenario: User leaves an email
    Given I click "Show" button
    And I fill in "Name" with "Agnes"
    And I fill in "Comment" with "This is my comment"
    And I fill in "Email" with "agnes@test.com"
    When I click "Create Comment" button
    Then I should see "agnes@test.com"
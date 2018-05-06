Feature: List articles on the landing page
  As a visitor
  In order to stay up to date with current affairs
  I would like to see a list of all articles when I visit the News Service

  Background: User can view list of articles
    Given the following articles exist in the database
        | title                    | content             |
        | A breaking news article! | Lorem ipsum...      |
        | Another article!         | Lorem ipsum dolor...|
        
  Scenario: User can view list of articles
    Given I visit the site 
    Then I should see "A breaking news article"
    And I should see "Lorem ipsum..."
    And I should see "Another article!"
    And I should see "Lorem ipsum dolor.."

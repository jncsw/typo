Feature: Test Categories
  As a blog administrator
  In order to classify articles
  I want to be able to create categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create category
    Given I am on the new category page
    When I fill in "category_name" with "Name"
    And I fill in "category_keywords" with "Keyword"
    And I fill in "category_permalink" with "Link"
    And I fill in "category_description" with "Desc"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Name"
    And I should see "Keyword"
    And I should see "Link"
    And I should see "Desc"
    
    
  Scenario: Successfully edit category
    Given I am on the new category page
    When I follow "General"
    And I fill in "category_keywords" with "new keywords"
    And I fill in "category_description" with "new description"
    And I press "Save"
    Then I should see "new keywords"
    And I should see "new description"
    
    

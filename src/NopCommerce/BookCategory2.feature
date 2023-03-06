Feature: Top menus and Books category tab

  As a user I would like to see Books tab in Top menus

  Background:       User navigate to HomePage
    Given             User is on HomePage
    When              User opens URL "https://demo.nopcommerce.com"
    And               User press enter button
    Then              User is on HomePage

  Scenario:         User should see tabs in correct order in Top menus
    When              User observes top menu tabs
    Then              User should see all 7 tabs

  Scenario:         User should be able to navigate to Books Category Page
    When              User clicks on "Books" tab in Top menus
    Then              User is on Books Category Page

  Scenario:         User should see Filters as Sort By and See the Grid icon and List icon
    When              User clicks on "Books" tab in Top menus
    And               Observe Books Category Page
    And               Hover mouse in the corner icons and observe icon
    And               Check "Sort By" filter is present
    Then              User is displayed Filters as Sort by and see the Grid and List Tab

  Scenario:         User should see all five filters in drop down list
    When              User clicks on "Books" tab in Top menus
    And               User clicks on drop down list in <"Sort by label text">
    Then              User is displayed all five filters in drop down list

  Scenario:         User should see the products as per "Name: A to Z" the selected filter in Sort by text field
    When              User clicks on "Books" tab in Top menus
    And               User clicks on drop down list in Sort by label text
    And               User click on "Name: A to Z"
    Then              User should be displayed products according to alphabetical order

  Scenario:         User should see the products as per "Name: Z to A" the selected filter in Sort by text field
    When              User clicks on "Books" tab in Top menus
    And               User clicks on drop down list in Sort by label text
    And               User click on "Name: Z to A"
    Then              User should be displayed products according to backwards alphabetical order

  Scenario:         User should see the products as per "Price: Low to High" the selected filter in Sort by text field
    When              User clicks on "Books" tab in Top menus
    And               User clicks on drop down list in Sort by label text
    And               User click on "Price: Low to High"
    Then              User should be displayed products according to price in ascending order

  Scenario:         User should see the products as per "Price: High  to Low" the selected filter in Sort by text field
    When              User clicks on "Books" tab in Top menus
    And               User clicks on drop down list in Sort by label text
    And               User click on "Price: Low to High"
    Then              User should be displayed products according to price in descending order

  Scenario:         User should see the products as per "Created on" the selected filter in Sort by text field
    When              User clicks on "Books" tab in Top menus
    And               User clicks on drop down list in Sort by label text
    And               User click on "Created On"
    Then              User should be display recently added product

  Scenario:         User should see products as per the number of products per page selected as "3"in Display filter
    When              User clicks on "Books" tab in Top menus
    And               User clicks on drop down list in "Display by" label text
    Then              User should be displayed 3 products according to the selected filter in the page

  Scenario:         User should see products as per the number of products per page selected as "6"in Display filter
    When              User clicks on "Books" tab in Top menus
    And               User clicks on drop down list in "Display by" label text
    Then              User should be displayed 6 products according to the selected filter in the page

  Scenario:         User should see products as per the number of products per page selected as "9"in Display filter
    When              User clicks on "Books" tab in Top menus
    And               User clicks on drop down list in "Display by" label text
    Then              User should be displayed 9 products according to the selected filter in the page

  Scenario:         User should see products horizontally
    When              User clicks on <"Books"> tab in Top menus
    And               User clicks on <"Grid icon"> format on Books Category Page
    Then              User will be displayed products horizontally on the page

  Scenario:        User should see products vertically
    When             User clicks on <"Books"> tab in Top menus
    And              User clicks on <"List icon"> format on Books Category Page
    Then             User will be displayed products vertically on the page
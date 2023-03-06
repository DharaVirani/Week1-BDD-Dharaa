Feature: Top menus and Books category tab

  As a user,
  I would like to check Acceptance criteria of NopCommerce top menu

  Background: User is on Homepage
    Given     User enters URL "https://demo.nopcommerce.com/" in browser
    And       User is on Homepage

  Scenario Outline: User should be able to see top menu tabs on homepage with categories
    When            User observes top menu tabs
    Then            User should see top menu tabs as "<Categories>"

    Examples:
      | Categories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      |Digital  Downloads |
      | Books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline: User should be able to navigate to Books category page with filters
    When            User clicks on book category from top menus
    Then            User should be navigated to Books category page
    And             User should be displayed "<filters>"

    Examples:
      |filters   |
      |Sort By   |
      |Display   |
      |The Grid  |
      |List Tab  |

  Scenario Outline: User is displayed list of each filter
    Given           User is on Book category page
    When            User clicks on "<filter>"
    Then            User should be displayed "<lists>" in drop down menu

    Examples:
      | filter  | lists                                                                         |
      | Sort by | Name: Ato z,name : Z to A, Price :Low to High, Price : High to Low,Created on |
      | Display | 3 , 6 ,9                                                                      |

  Scenario Outline: User should be able to select any filter option and see result accordingly
    Given           User is on Book category page
    When            User clicks on "<filter>"
    And             User selects on any "<option>" from the filters
    Then            User should be able to select any filter option from the drop down list
    And             User should be displayed "<results>"

    Examples:
      | filter     | option            | results                                                           |
      | Sort by    | Name:A to Z       | Sorted product with product name in alphabetical  order  A to Z   |
      | Sort by    | Name:Z to A       | Sorted product with the product name in alphabetical order Z to A |
      | Sort by    | Price:Low to High | Sorted product with the price in ascending order                  |
      | Sort by    | Price:High to Low | Sorted product with the price in descending order                 |
      | Sort by    | Created on        | Recently added  product should be show first                      |
      | Display by | 3                 | 3 products in a page                                              |
      | Display by | 6                 | 6 products in a page                                              |
      | Display by | 9                 | 9 products in a page                                              |

  Scenario Outline: User should see product display format type as per given use case in SRS document
    Given           User is on Book category page
    When            User clicks on "<Display format icon>"
    Then            User should be see product display format according to the format chosen as per SRS document

    Examples:
      | Display format icon |
      | Grid                |
      | List                |





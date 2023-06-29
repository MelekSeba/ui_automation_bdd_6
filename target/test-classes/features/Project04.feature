Feature: Tech Global table functionality

  Background:
    Given the user is on "https://techglobal-training.com/frontend/project-4"

  @Task01

  Scenario: User sees the inventory details
    Then the user should see the "Inventory" heading
    And the user should see the table with the headers below
      | Quantity |
      | Product  |
      | Price $  |
      | Total $  |
    And the user should see the table with the rows below

      | 1 | iPhone  | 1,000 | 1,000 |
      | 3 | Airpods | 100   | 300   |
      | 2 | iPad    | 500   | 1,000 |
    And the user should see the "ADD PRODUCT" button is enabled
    And the user should see the "Total = $2,300" text displayed

  @Task02
  Scenario: User sees the Add product function
    When the user clicks on the "ADD PRODUCT" button
    Then the user should see the "Add New Product" modal with its heading
    And the user should see the "X" button is enabled
    And the user should see the "Please select the quantity" label
    And the user should see the "Quantity" input box is enabled
    And the user should see the "Please enter the name of the product" label
    And the user should see the "Product" input box is enabled
    And the user should see the "Please enter the price of the product" label
    And the user should see the "Price" input box is enabled
    And the user should see the "SUBMIT" button is enabled
  @Task03
  Scenario: Validate the Add New Product modal X button
    When the user clicks on the "ADD PRODUCT" button
    Then the user should see the "Add New Product" modal with its heading
    When the user clicks on the "X" button
    Then the user should not see the "Add New Product" modal
  @Task04
  Scenario: Validate the new product added
    When the user clicks on the "ADD PRODUCT" button
    And the user enters the quantity as "2"
    And the user enters the product as "Mouse"
    And the user enters the price as "100"
    And the user clicks on the "SUBMIT" button
    Then the user should see the table with the new row below
      | 2     |
      | Mouse |
      | 100   |
      | 200   |
    And the user should see the "Total = $2,500" text displayed
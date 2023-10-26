# Saran wongkum 6410451415

Feature: Check stock
  As a cashier
  I want to check stock

  Background:
    Given the store is ready to service customers
    And a product "Ribbin" with price 25.50 and stock of 15 exists
    And a product "Sait" with price 40.00 and stock of 5 exists
    And a product "Meat" with price 60.00 and stock of 8 exists

  Scenario: Buy one product
    When I buy "Ribbin" with quantity 10
    Then total in stock "Ribbin" quantity 5


  Scenario: Buy multiple products
    When I buy "Meat" with quantity 2
    And I buy "Ribbin" with quantity 5
    Then total in stock "Meat" quantity 6
    Then total in stock "Ribbin" quantity 10

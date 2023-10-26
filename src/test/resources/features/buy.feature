# Saran wongkum 6410451415

Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Ribbin" with price 25.50 and stock of 15 exists
    And a product "Sait" with price 40.00 and stock of 5 exists
    And a product "Meat" with price 60.00 and stock of 8 exists

Scenario: Buy one product
    When I buy "Ribbin" with quantity 2
    Then total should be 51.00

Scenario: Buy multiple products
    When I buy "Sait" with quantity 2
    And I buy "Meat" with quantity 1
    And I buy "Ribbin" with quantity 3
    Then total should be 191.00
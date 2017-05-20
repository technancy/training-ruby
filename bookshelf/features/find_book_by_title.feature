Feature: Find a book by title
  In order to find a book
  As a user of a bookshelf
  I want to search by title

  Scenario: No such book on empty bookshelf
    Given an empty bookshelf
    When I search for a book
    Then shows no results found

  Scenario: No such book on bookshelf
    Given a bookshelf with one book
    When I search for a non existent book
    Then shows no results found

  Scenario: Found book on bookshelf
    Given a bookshelf with one book
    When I search for a book
    Then shows the book

  Scenario: Found book on bigger bookshelf
    Given a bookshelf with a few books
    When I search for a book
    Then shows the book


@uiAmazon
Feature: Searching Book on page


  Scenario: Search Book
    Given driver 'https://www.amazon.com'
    * def pjo = Java.type('PageObjectsAmazon.mainPageAmazon')
    * def searchBook = 'Effective Java\nby Joshua Bloch'

    And input(pjo.searchField,'Java')
    And mouse(pjo.searchButton).click()
    And click(pjo.filterBook)

    * delay(5000)
    Then match scriptAll(pjo.BooksOnPage," function(e){ return e.innerText}").includes(searchBook) == true







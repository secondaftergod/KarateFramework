@ui
Feature: sample karate test script


  Scenario: get response
    Given driver 'https://www.amazon.com'
    * def pjo = Java.type('PageObjects.mainPage')

    And input(pjo.searchField,'Java')
    And mouse(pjo.searchButton).click()
    And click('{span}Books')
    * delay(5000)
    Then match scriptAll("//*[@class='a-section a-spacing-none a-spacing-top-small s-title-instructions-style']"," function(e){ return e.innerText}").includes('Effective Java\nby Joshua Bloch') == true







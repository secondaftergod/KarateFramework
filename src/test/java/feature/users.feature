Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'http://numbersapi.com/'

  Scenario Outline: get response
    Given path '<number>/math?json=true'
    When method get
    Then status 200
    And print 'after get', response
    Examples:
      |number |
      |1|
      |2|
      |3|
      |4|

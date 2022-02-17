Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: get response
    Given path 'todos/1'
    When method get
    Then match response ==
                          """
                             {
                               "userId": 1,
                               "id": 1,
                               "title": "delectus aut autem",
                               "completed": false
                             }
                          """
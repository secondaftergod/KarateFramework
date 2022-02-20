@api
Feature: Api response
Scenario: Get request
  Given url 'https://www.amazon.com'
  When method GET
  Then status 200
@api
Feature: test
Scenario: Get test
  * string jsonTest = read('file:src/test/java/PageObjects/JSONInfo.json')
  * def jsonCheck = read('file:src/test/java/feature/JSONCheck.json')
  * print jsonCheck.roleId

  * def test = Java.type('PageObjects.JsonParser')
  * print test.isValid(jsonTest)


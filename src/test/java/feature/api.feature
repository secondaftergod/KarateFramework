@api
Feature: test
Scenario: Get test
  * string jsonTest = read('file:src/test/java/PageObjects/JSONInfo.json')
  * string jsonCheck = read('file:src/test/java/feature/JSONCheck.json')
  * def test = Java.type('PageObjects.JsonParser')
  * print test.isValid(jsonTest,jsonCheck)


@api
Feature: test
Scenario: Get test
  * def jsonTest = read('file:src/test/java/PageObjects/JSONInfo.json')
#  * def jsonCheck = read('file:src/test/java/feature/JSONCheck.json')
#  * def test = Java.type('PageObjects.JsonParser')
#  * print test.isValid(jsonTest,jsonCheck)
  Then match jsonTest.connectedApps[0].applicationRoles[0].roleId == "Super Admin"
  Then match jsonTest.connectedApps[0].applicationRoles[0].assignedResources[0].resourceId == "50109535"


@api1
Feature: test
Scenario: Get test
  * def jsonTest = read('file:src/test/java/PageObjects/JSONInfo.json')
  Then match jsonTest.connectedApps[0].applicationRoles[0].roleId == "Super Admin"
  Then match jsonTest.connectedApps[0].applicationRoles[0].assignedResources[0].resourceId == "50109535"


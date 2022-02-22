@apiEmail
Feature: Fake Email

  Scenario Outline: email check
    Given url 'https://www.1secmail.com/api/v1/?action=getMessages&login=<login>&domain=<domain>'
    And method GET
#    * def json = karate.pretty(response)
    * def idmessage = response[0].id
    Then status 200
    Given url 'https://www.1secmail.com/api/v1/?action=readMessage&login=<login>&domain=<domain>&id='+idmessage
    And method Get
    * def mUrl = response.textBody.split(' ')
    * print mUrl
    Given driver mUrl[0]
    Then status 200
    * delay(5000)



    Examples:
    |login|domain|
    |element|1secmail.com|



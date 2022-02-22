@apiEmail
Feature: Fake Email

  Scenario Outline: email check
    Given url 'https://www.1secmail.com/api/v1/?action=getMessages&login=<login>&domain=<domain>'
    And method GET
#    * def json = karate.pretty(response)
#    * print json
    * match karate.range(200, 299) contains responseStatus
    * def http = 'https://www.1secmail.com/api/v1/?action=readMessage&login=<login>&domain=<domain>&id=<idmessage>'
    * replace http.idmessage = response[0].id
    Given url http
    When method Get
    * string textMessage = response.textBody
    * print textMessage
    * def href = Java.type('ApiInfo.HtmlFind')
    * def link = href.findUrls(textMessage)
    * print link
    Given driver link[0]
    * match karate.range(200, 299) contains responseStatus
    * delay(5000)



    Examples:
    |login|domain|
    |element|1secmail.com|



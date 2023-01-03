Feature: Validate The Status Of Book

  Scenario: Verify The Status of Book
    Given url baseUrl + '/status'
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200
    * print response
    * print responseStatus
    * print responseTime
#    And match $.status == OK
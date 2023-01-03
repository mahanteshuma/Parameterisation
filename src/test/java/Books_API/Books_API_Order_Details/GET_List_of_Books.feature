Feature: Validate The List of Books Details

  Scenario: Verify The GET Request Book Details
    Given url baseUrl + '/books'
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200
    * print response
    * print responseStatus
    * print responseTime
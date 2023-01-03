Feature: Validate The Get Call Single Book Details

  Scenario: Verify The GET Call Single Book Details
    Given url baseUrl + '/books/4'
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200
    * print response
    * print responseStatus
    * print responseTime
    And match $.id == '#present'


Feature: validate All orders Details

  Scenario: Verify The All Orders
    Given url baseUrl + '/orders'
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200
    * print response
    * print responseStatus
    * print responseTime
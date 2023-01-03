Feature: Validate The Delete Call Details

  Scenario: Verify The Delete Request
    Given url baseUrl + '/orders/' + orderId
    And header Authorization = 'Bearer ' + accessToken
    When method DELETE
    Then status 204
    * print response
    * print responseStatus
    * print responseTime
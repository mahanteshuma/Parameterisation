Feature: Validate The Single Order Details

  Scenario: Verify The Get Call Single Order Details
    Given url baseUrl + '/orders/' + orderId
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200
    * print response
    * print responseStatus
    * print responseTime
Feature: Validate The POST call Submit Order Request

  Background:
    * def SubmitOrder =
    """
    {
    "bookId" : 5,
    "customerName" : "Devid"
}
    """

  Scenario: Verify The Submit Request call Details
    Given url baseUrl + '/orders'
    And header Authorization = 'Bearer ' + accessToken
    And request SubmitOrder
    When method POST
    Then status 201
    * print response
    * print responseStatus
    * print responseTime
    And match $.created == true
    And match $.orderId == '#present'
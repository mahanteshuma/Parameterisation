Feature: Validate The PATCH Details

  Background:
    * def requestBody =
    """
    {
    "customerName" : "Dora"
    }
    """

    Scenario: Verify The Patch Call Request
      Given url baseUrl + '/orders/' + orderId
      And header Authorization = 'Bearer ' + accessToken
      When method PATCH
      Then status 204
      * print response
      * print responseStatus
      * print responseTime
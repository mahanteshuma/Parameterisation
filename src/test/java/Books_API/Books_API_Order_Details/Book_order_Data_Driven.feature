Feature: Validate the Book order Details from from DataSheet

  Scenario Outline: Verify the Book order  Details from DataSheet

    Given url baseUrl + '/orders'
    And header Authorization = 'Bearer ' + accessToken
    And request {"bookId":<bookId>, "customerName":<customerName>}
    When method POST
    Then status 201
    * print response
    * print responseStatus
    * print responseTime
    And match $.created == true
    And match $.orderId == '#present'
    * print orderId



    Examples:
#      | bookId | customerName |
#      | 5 | Poll |

      | read('classpath:API(1).json') |

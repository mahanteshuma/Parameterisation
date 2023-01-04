Feature: Create Access_Token

  Background:

#    * def random_email =
#    """
#    function(s){
#    var text = "";
#    var pattern = "ABCDEFGHIJKLMNPOQUVWXYZabcdefghijklmnopquvwxyz1234567890!@#$%^&*";
#    for( var i=0; i<s; i++)
#    text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
#    return text;
#    }
#    """
#    * def randomEmil = random_email(10)
#    * print randomEmil
    * def requestPayload =
    """
    {
    "clientName" : "David Wilson",
    "email" : "davidwilson@gmail.com
    }
    """
#    * requestPayload.email = randomEmil + "@gamil.com"
    * print requestPayload

  Scenario: Access_Token
    Given url baseUrl + '/api-clients/'
    And request requestPayload
#    And header Authorization = 'Bearer ' + accessToken
    When method POST
    Then status 201
    * print response
    * print responseStatus
    * print responseBody
    * print responseTime




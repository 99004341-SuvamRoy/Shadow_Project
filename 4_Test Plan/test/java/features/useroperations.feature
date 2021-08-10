Feature: Create user with given inputs

  Background:
    * url 'https://petstore.swagger.io/v2/user'
    * headers {Content-Type : 'application/json'}




  Scenario: POST method
    * def n = Java.type('reusableFiles.testData')
    * def id = n.randomString()
    * def username = n.getAlphaNumericString(8)
    * def firstName = n.getAlphaNumericString(6)
    * def lastName = n.getAlphaNumericString(4)
    * def email = n.getAlphaNumericString(8) + "@gmail.com"
    * def password = n.getAlphaNumericString(7)
    * def userStatus = n.randomString()
    * def phone = n.randomPhone()
    * def payload =
		"""
			{
				"id": "#(id)",
				"username": "#(username)",
				"firstName": "#(firstName)",
				"lastName": "#(lastName)",
				"email": "#(email)",
				"password": "#(password)",
				"phone": "#(phone)",
				"userStatus": "#(userStatus)"
			}

		"""
    And request payload
    When method POST
    Then status 200
    And print "Post done"
    And print response
    And print payload







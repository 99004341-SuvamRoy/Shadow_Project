Feature: Create user with given inputs with dynamic payload

	
	Scenario: POST method
	* def n = Java.type('reusableFiles.testData')
		* def id = "id1"
		* def username = "username1"
		* def firstName = n.getAlphaNumericString(6)
		* def lastName = n.getAlphaNumericString(4)
		* def email = n.getAlphaNumericString(8) + "@gmail.com"
		* def password = n.getAlphaNumericString(7)
		* def userStatus = "userStatus1"
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

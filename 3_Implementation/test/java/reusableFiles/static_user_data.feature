Feature: Create user with given inputs with static payload

	
	Scenario: POST method
	* def n = Java.type('reusableFiles.testData')
		* def id = n.randomLong() 
		* def username = n.getAlphaNumericString(8) 
		* def firstName = n.getAlphaNumericString(6)
		* def lastName = n.getAlphaNumericString(4)
		* def email = n.getAlphaNumericString(8) + "@gmail.com"
		* def password = n.getAlphaNumericString(7)
		* def userStatus = n.randomInt()
		* def phone = n.randomPhone()
		* def payload1 = 
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

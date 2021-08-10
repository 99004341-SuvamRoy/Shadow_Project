Feature: Create user with given inputs

	Background:
	* url someurl
	* headers {Content-Type : 'application/json', Accept:'application/json'}
	

	Scenario: POST method with Positive user test data as a request body
	* def body5 = read('classpath:JSON/requestBody5.json')
		And request body5
		When method POST
		Then status 200
		And print "Post done"
		And print body5
		Then print response
	 
	@smoke
	Scenario Outline: POST method with dynamic test data for various key-value pairs
		* def n = Java.type('reusableFiles.testData')
		* def id = <id>
		* def username = <username>
		* def userStatus = <userStatus>
		* def requestBody = call read('classpath:reusableFiles/dynamic_user_data.feature'){ id1 : '#(id)', username1 : '#(username)', userStatus1 : '#(userStatus)' }
		And request requestBody.payload
		When method POST
		Then status <status>
		And print "Post done"
		Then print requestBody.payload
		Then print response	
		
		Examples:
		| id | username | userStatus | status |
		|n.randomLong()|n.getAlphaNumericString(8)| n.randomInt()|200|
		|n.getAlphaNumericString(8)|n.getAlphaNumericString(8)| n.randomInt()|500|
		|n.randomLong()|n.getAlphaNumericString(8)| n.getAlphaNumericString(8)|500|
		|n.randomInt()|n.getAlphaNumericString(8)| n.randomInt()|200|
		|n.randomLong()|n.getAlphaNumericString(8)| n.randomLong()|500|
		|n.randomLong()|n.randomLong()| n.randomInt() |200|
	
		
		
	Scenario Outline: POST method with static test data for various key-value pairs
		* def requestBody = call read('classpath:reusableFiles/static_user_data.feature')
		And request requestBody.payload1
		When method <method>
		Then status <status>
		And print "Post done"
		Then print requestBody.payload1
		Then print response	
		
		Examples:
		| method | status |
		| POST | 200 |
		| GET | 405 |
		| PUT | 405 |
		| DELETE | 405 |
		
		
	Scenario: POST method with Array as a request body
	* def body1 = read('classpath:JSON/requestBody1.json')
		And request body1
		When method POST
		Then status 200
		And print "Post done"
		And print body1
		Then print response	
		
	Scenario: POST method with JSON as a request body
	* def body2 = read('classpath:JSON/requestBody2.json')
		And request body2
		When method POST
		Then status 500
		And print "Post not done"
		And print body2
		Then print response	
		
	Scenario: POST method with Array as well as JSON as a request body
	* def body3 = read('classpath:JSON/requestBody3.json')
		And request body3
		When method POST
		Then status 200
		And print "Post done"
		And print body3
		Then print response	
		
	Scenario: POST method with an empty request body
	* def body4 = read('classpath:JSON/requestBody4.json')
		And request body4
		When method POST
		Then status 405
		And print "Post not done"
		And print body4
		Then print response	
		
	Scenario: POST method without key as a request body
	* def body6 = read('classpath:JSON/requestBody6.json')
		And request body6
		When method POST
		Then status 200
		And print "Post not done"
		And print body6
		Then print response
		
	
		
	
		
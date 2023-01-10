Feature: List book highlights
	Scenario: Retrieve all highlights
		Given url highlightsUrl
		When method get
		Then status 200
		And match each response == { id: '#notnull', userId: '#notnull', title: '#notnull', body: '#notnull' }
        Then match header Content-Type == 'application/json; charset=utf-8'
		
	Scenario: Filter by userId
		Given url highlightsUrl + '?userId=1'
		When method get
		Then status 200
		And match each response == { id: '#notnull', userId: 1, title: '#notnull', body: '#notnull' }
		Then match header Content-Type == 'application/json; charset=utf-8'

	Scenario: Finding a specific highlight
		Given url highlightsUrl
		And path '2'
		When method get
		Then status 200
		And match response == { id: 2, userId: '#notnull', title: '#notnull', body: '#notnull' }
		Then match header Content-Type == 'application/json; charset=utf-8'

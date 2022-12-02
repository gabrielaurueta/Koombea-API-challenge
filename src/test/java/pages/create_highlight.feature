Feature: Book Highlight Creation
	Scenario: Book highlight creation successful 
	
		Given url highlightsUrl
		And request highlightRequestPayload
		When method post
		Then status 201
		And match response == highlightResponse
		Then match header Content-Type == 'application/json; charset=utf-8'
		
	Scenario: Book highlight creation failure (test api does not fail so using wrong url to trigger 404)
	
		Given url highlightsUrl + 'foo'
		And request highlightRequestPayload
		When method post
		Then status 404
		Then match header Content-Type == 'application/json; charset=utf-8'
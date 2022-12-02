Feature: Update Book Highlight
	Scenario: Update Book highlight successful 
	
		Given url highlightsUrl
		And request highlightRequestPayload
		When method post
		Then status 201
		And match response == highlightResponse
		Then match header Content-Type == 'application/json; charset=utf-8'
		
		Given path response.id
		And request { comment: "updated comment" }
		When method patch
		Then status 200
		And match response == { comment: "updated comment" }
		Then match header Content-Type == 'application/json; charset=utf-8'
		
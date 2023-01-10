Feature: Commenting on a highlight
	Scenario: Create comment successful
		Given url highlightsUrl
		And path '1/comments'
		And request { name: "Jhon Doe", email: "email@email.com", body: "Lorem ipsum" }
		When method post
		Then status 201
		And match response == { id: '#notnull', postId: '1', name: "Jhon Doe", email: "email@email.com", body: "Lorem ipsum" }
		Then match header Content-Type == 'application/json; charset=utf-8'

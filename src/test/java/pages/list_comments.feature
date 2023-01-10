Feature: List highlight comments
	Scenario: List comments successful
		Given url highlightsUrl
		And path '1/comments'
		When method get
		Then status 200
		And match each response == { postId: 1, id: "#notnull", email: "#notnull", body: "#notnull", name: "#notnull" }
        Then match header Content-Type == 'application/json; charset=utf-8'

Feature: Delete highlights
	Scenario: Delete highlight successful
		Given url highlightsUrl
		And path '1'
		When method delete
		Then status 200
		Then match header Content-Type == 'application/json; charset=utf-8'

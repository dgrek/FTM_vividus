Scenario: create trello board 
Given request body: ''
When I issue a HTTP POST request for a resource with the URL 'https://trello.com/1/boards?name=wow&token=${token}&key=${APIkey}'
Then the response code is equal to '200'

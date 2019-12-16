Scenario: sign up
Given I am on the main application page
When I click on element located `By.xpath(//header//a[@href='/signup'])`
Then the page with the URL containing '/signup' is loaded
When I initialize the STORY variable `UserNickname` with value `#{generate(regexify '[a-z]{10}')}`
When I initialize the STORY variable `UserEmail` with value `${UserNickname}@ugly.email`
When I enter `${UserEmail}` in field located `By.xpath(//input[@type='email'])`
When I wait until element located `By.xpath(//input[@id='signup'])` appears
When I click on element located `By.xpath(//input[@id='signup'])`
When I enter `${UserNickname}` in field located `By.xpath(//input[@id='name'])`
When I initialize the STORY variable `UserPassword` with value `#{generate(Internet.password)}`
When I enter `${UserPassword}` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@id='signup'])`
Then the page with the URL 'https://trello.com/create-first-board' is loaded
When I click on element located `By.xpath(//*[@class='first-board-navigation']/span[last()])`
When I click on element located `By.xpath(//*[@class='first-board-continue-footer is-active submit-footer'])`
When I remove all cookies from the current domain

GivenStories: story/precondition/SignUp.story


Scenario: log in
When I log in as user with '${UserEmail}' and '${UserPassword}'
Then the page with the URL containing 'https://trello.com/${UserNickname}/boards' is loaded


Scenario: verify user profile
When I click on element located `By.xpath(//button[contains(@title, '${UserNickname}')])`
When I change context to an element by By.xpath(//*[@data-test-id='header-member-menu-popover'])
When I click on element located `By.xpath(//a[@href='/${UserNickname}/profile'])`
Then the page with the URL 'https://trello.com/${UserNickname}' is loaded
When I switch back to the page


Scenario: pages navigation
When I click on element located `By.xpath(//div[contains(@class, 'tabbed-pane-nav')]//a[contains(@href,'activity')])`
When I ESTABLISH baseline with `Activity-tab`
When I click on element located `By.name(house)`
When I ESTABLISH baseline with `Home-page` ignoring:
|ELEMENT                                                                |
|By.xpath((//div[@class='boards-page-board-section mod-no-sidebar'])[1])|
When I click on element located `By.xpath(//a[@href='/templates'])`
When I ESTABLISH baseline with `Templates-page`
When I click on element located `By.xpath(//ul//li[#{randomInt(5, 10)}])`
When I ESTABLISH baseline with `Random-page`
When I click on element located `By.xpath(//a[@href='/' and @aria-label])`
When I COMPARE_AGAINST baseline with `Home-page` ignoring:
|ELEMENT                                                                |
|By.xpath((//div[@class='boards-page-board-section mod-no-sidebar'])[1])|


Scenario: UI control validation
When I find = '1' elements by By.xpath(//*[@class='board-tile mod-add']) and for each element do
|step                                                                                                |
|When I click on element located `By.xpath(//*[contains(@class, 'mod-add')])`                        |
|When I enter `New Board` in field located `By.xpath(//*[@class='create-board-form']//input[@value])`|
|When I click on element located `By.xpath(//*[@class='create-board-form']//*[@type='submit'])`      |
|Then the page with the URL containing '/new-board' is loaded                                        |
 
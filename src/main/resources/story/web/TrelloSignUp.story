Lifecycle:
Examples:
|UserEmail                          |UserPassword                  |
|1#{generate(Internet.emailAddress)}|#{generate(Internet.password)}|
|2#{generate(Internet.emailAddress)}|#{generate(Internet.password)}|
|3#{generate(Internet.emailAddress)}|#{generate(Internet.password)}|


Scenario: sign up
Given I am on the main application page
When I click on element located `By.xpath(//header//a[@href='/signup'])`
Then the page with the URL containing '/signup' is loaded
When I enter `<UserEmail>` in field located `By.xpath(//input[@type='email'])`
When I wait until element located `By.xpath(//input[@id='signup'])` appears
When I click on element located `By.xpath(//input[@id='signup'])`
When I enter `<UserPassword>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@type='submit'])`

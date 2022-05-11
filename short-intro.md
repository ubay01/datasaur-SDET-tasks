# Task 1

Task 1 is the answer for top 10 use cases of WhatsApp desktop application. As the instruction, I write it down on Gherkin syntax with format .feature. The use cases are written in single file. So you can find it inside the folder task_1.

# Task 2

For task 2, I use Cypress framework. Since I make git-ignore on the node_modules, don't forget to install all the packages.
For the automation script, I write it using Gherkin syntaxt as well. You can find the main script inside folder cypress/integration/BDD named 'ceo_of_spacex.feature'.

## Task 2 - Setup

1. Go to directory task_2
2. Install the package dependecies
3. You can run the test in cypress test runner `npx cypress open`, or you can use the script `npm run test` to run in cli mode.
4. After run the test, you can generate the report by running the script `npm run generate-report`. A new folder 'reports' will be created and inside you can open the report in html format

## Task 2 - Script Description

1. The initial condition is get the CEO name from SPACE X Land API as the main validator
2. Then user open wikipedia homepage as the initial step.
3. The main trigger is when user invoke search action
4. Then the search result must contain the name of CEO taken from SPACE X Land API

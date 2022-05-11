import { expect } from "chai";
import { Given, When, And, Then } from "cypress-cucumber-preprocessor/steps"

let ceoName = '';

// Get CEO name from SPACE X Land API
Given('Get CEO name from SPACE X Land API', function () {
    // Get CEO's name from Spacex Land's Grapql API
    const query = `{
        company {
          ceo
        }
      }`;

    cy.request(
        {
            method: 'POST',
            url: 'https://api.spacex.land/graphql/',  // graphql endpoint
            body: { query },  // or { query: query } depending if you are writing with es6
            failOnStatusCode: false  // not a must but in case the fail code is not 200 / 400
        }
    ).then((res) => {
        ceoName = res.body.data.company.ceo
        expect(ceoName).to.exist

    })
})


// I open wikipedia homepage
Given('I open wikipedia homepage', function () {
    cy.visit('https://www.wikipedia.org')
})

// I search using keyword of CEO of SPACE X
When('I search using keyword of CEO of SPACE X', function () {
    cy.get('#searchInput')
        .type('CEO OF SPACE X')
    cy.get('[type="submit"]')
        .click()
})

// CEO of Space X in Wikipedia is similar from Spacex Land
Then('CEO of Space X in Wikipedia is similar from Spacex Land', function () {
    // Compare with the search result
    cy.get('.searchresult')
        .should('contain', ceoName)
    cy.log("CEO of SPACE X is " + ceoName)
})
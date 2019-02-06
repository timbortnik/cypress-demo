import { Given, Then } from "cypress-cucumber-preprocessor/steps";

const url = 'http://localhost:5000/'

Given('I open OOS page', () => {
  cy.visit(Cypress.env('URL') || url)
})

Then('I see {string} heading', (title) => {
  cy.get('h1.App-title').contains(title)
})

Then("I see following level 2 headings:", dataTable => {
  dataTable.hashes().forEach(row => {
    const { heading } = row;
    cy.get('.App-column h2').contains(heading);
  });
})

Then('I see applicant card', () => {
  cy.get('.CrewMember-container').find(".CrewMember-info")
})

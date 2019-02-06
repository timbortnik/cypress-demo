import { When, Then } from "cypress-cucumber-preprocessor/steps";

When('I enter {string} search name', (name) => {
  cy.get('input#name').as('current-input')
  .type(name)
})

When('I enter {string} search city', (city) => {
  cy.get('input#city').as('current-input')
  .type(city)
})

Then('I see no applicant cards', () => {
  cy.get('.CrewMember-container').should('not.exist')
})

Then('I press Enter', () => {
  cy.get('@current-input').type("{enter}")
})

Then('I click Clear button', () => {
  cy.get('button').contains('Clear').click()
})

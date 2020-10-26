# Refactor

## Display

- [ ] Make web app fully responsive and accessible
  - [ ] Remove table display for breakpoints small and under
  - [ ] Fix navbar expand display
- [ ] Add more whitespace throughout app
- [ ] Change links to buttons
- [ ] Keep alert banners from spanning the entire page
- [ ] Change "Back" button verbiage

## Functioning

- [ ] Go right to "All Loans" page if the user is already logged in
- [ ] Implement a lender logout function
- [ ] Allow loans to be deleted
- [ ] Fix `return` attribute logic
  - [ ] A loan isn't returned, an item is
  - [ ] Use [Enums](https://api.rubyonrails.org/v5.2.3/classes/ActiveRecord/Enum.html)
- [ ] Add a `quantity` attribute to `Item`
  - [ ] Don't allow an item to be loaned out when its quantity is 0
- [ ] Sanitize input parameters
  - [ ] Format phone numbers
- [ ] Look more into whenever gem and cron jobs
  - [ ] Make it run in development environment

## Best Practices

- [ ] Add a concerns folder
  - [ ] Move `Item` and `Borrower` scopes into concerns
- [ ] Edit new loan forms
  - [ ] Do I want to include default attributes on the new loan form?
- [ ] Implement testing

# Future Features

## Display

- Display `item.name_with_category` only if `item.category.exists?`
- Don't allow inputs on `borrow.days_borrowed` and `borrow.reminders_sent` to go below the default values

## Functioning

- Make it easier to return an item
  - Instead of having to edit the borrow, click a "Return" button (a la Rxeactions project)
  - Use [#cycle](https://www.rubyguides.com/2017/10/7-powerful-ruby-methods/) and #next to accomplish this
- Add a `quantity` attribute to `Item`
  - Don't allow an item to be loaned out when its quantity is 0
- Sanitize input parameters
  - Format phone numbers
- Look more into whenever gem
  - Make it run in development environment
  
## Best Practices

- Add a concerns folder
  - Move `Item` and `Borrower` scopes into concerns

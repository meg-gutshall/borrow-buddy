# Future Features

## Display

- Fix navbar expand display

## Functioning

- Make it easier to return an item
  - Instead of having to edit the borrow, click a "Return" button (a la Rxeactions project)
  - Use [Enums](https://api.rubyonrails.org/v5.2.3/classes/ActiveRecord/Enum.html) to accomplish this
- Add a `quantity` attribute to `Item`
  - Don't allow an item to be loaned out when its quantity is 0
- Sanitize input parameters
  - Format phone numbers
- Look more into whenever gem and cron jobs
  - Make it run in development environment

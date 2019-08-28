# Specifications for the Rails Assessment

## Specs

- [x] Using Ruby on Rails for the project
- [x] Include at least one `has_many` relationship
  - A lender has many borrows
  - An item has many borrows
  - A recipient has many borrows
- [x] Include at least one `belongs_to` relationship
  - A borrow belongs to a lender
  - A borrow belongs to an item
  - A borrow belongs to a recipient
- [x] Include at least two `has_many, through:` relationships
  - A lender has many items through borrows
  - A lender has many recipients through borrows
- [x] Include at least one many-to-many relationship
  - Items have many recipients, recipients have many items (through borrows)
- [x] The "through" part of the `has_many, through:` includes at least one user-submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user
  - The borrow model includes `days_borrowed`, `reminders_sent`, and `returned` as user-submittable attributes
- [x] Include reasonable validations for simple model objects
  - Borrow: validates the presence and integer numericality of `days_borrowed` and `reminders_sent` (which have default values at `1` and `0` respectively) as well as the boolean value of `returned` through the use of inclusion
  - Item: validates the presence of `name`
  - Recipient: validates the presence of `name` and the format of `email` with the option to leave the field blank
- [x] Include a class level ActiveRecord scope method
  - `Borrow.lender_scope(current_lender).hide_returned`, URL: `borrows/current_borrows`
  - `Borrow.lender_scope(current_lender).show_returned`, URL: `borrows/returned_borrows`
- [x] Include signup (Devise)
- [x] Include login (Devise)
- [x] Include logout (Devise)
- [x] Include third party signup/login (Devise with Google OmniAuth 2)
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
  - Nesting for borrows index and show routes: `lenders/:lender_id/borrows`, `recipients/:recipient_id/borrows`, `items/:item_id/borrows`, and `lenders/:lender_id/borrows/:id`
  - Nesting for recipients index and show routes: `lenders/:lender_id/recipients`, `items/:item_id/recipients`, and `lenders/:lender_id/recipients/:id`
  - Nesting for items index and show routes: `lenders/:lender_id/items`, `recipients/:recipient_id/items`, and `lenders/:lender_id/items/:id`
- [x] Include nested resource "new" form
  - Nesting for borrows new routes: `lenders/:lender_id/borrows/new`, `recipients/:recipient_id/borrows/new`, and `items/:item_id/borrows/new`
- [x] Include form display of validation errors
  - Can be found in `/views/partials/_form_errors.html.erb`

## Confirm

- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate

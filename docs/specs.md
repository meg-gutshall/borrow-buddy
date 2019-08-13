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
- [ ] The "through" part of the `has_many, through:` includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup (Devise)
- [x] Include login (Devise)
- [x] Include logout (Devise)
- [x] Include third party signup/login (Devise with Google OmniAuth 2)
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

## Confirm

- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate

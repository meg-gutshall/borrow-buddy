# Assessment Notes

Assessment #1 Date: August 26, 2019
Assessment #2 Date: August 29, 2019

_Q: What's the difference between a `redirect` and a `render`?_
A: A `redirect` triggers a new HTTP request. A `render` does not.

## Scopes

Scopes and class methods essentially perform the same functions, but the structure chosen can make a difference in what happens with the returned ActiveRecord::Relation object.

### Advantages of Using Scopes

- Scopes are always chainable
  - This includes chaining class methods onto your scopes
- Scopes are available to their parent class's `has_many` associations
  - Can be called on these classes by chaining (i.e. `HasManyClass.ParentClass.Scope`)
- Scopes can be used to create new association
  - Construct the association like a regular scope except replace the word `scope` with the type of association and add `, class_name: "ScopeParentClass"` at the end
- The object returned is an `ActiveRecord::Relation`
  - The object can act like an `Array`, implementing [`Enumerable`](https://api.rubyonrails.org/classes/Enumerable.html)
- If the returned `ActiveRecord::Relation` object is `nil` or `false`, an `all` scope is returned instead
  - For a class method, it will simply return `nil` or `false`
- You can use a `default_scope` to set a default for all operations in the model
- Scopes make it easier for other developers to identify if an Active Record query has already been made

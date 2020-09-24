# Template Method Notes

**Book Example:**
Report in HTML and Plain Text

**My Example:**
Visualizations of Different Coffee Drinks
Used for Pieces during Chess

- Separate the things that stay the same, from the things that differ.
- Define an abstract base class with a master method that performs the basic steps.
- Hook Methods are non-abstract methods that can be overridden in the concrete classes.

## Abstract Base Class
Raise an error on methods that need to be provided in the concrete classes.
```ruby
def method_name
  raise 'Called abstract method: #method_name'
end
```

## Concrete Class
Provide empty methods when they are not needed in a particular concrete class.
```ruby
def method_name; end
```
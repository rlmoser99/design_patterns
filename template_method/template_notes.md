# Template Method Notes

**Notes:**
- Separate the things that stay the same, from the things that differ.
- Define an abstract base class with a master method that performs the basic steps, like the 'pipeline', or the 'procedural script'.
- Hook Methods are non-abstract methods that can be overridden in the concrete classes.
- The abstract base class does not have to have all abstract methods. Some of the methods can have a default implementation in the base class.
- This pattern is more then just traditional inheritance. The template method pattern is more about defining parts of an operation. The base-class ensures those operations happen in the same order each time.
- The strategy pattern solves the same problem but with composition instead of inheritance.

**Book Example:**
- Report in HTML and Plain Text

**Other Examples:**
- Visualizations of Different Coffee Drinks
- Used for Pieces during Chess

**"Real World" Examples:**
- An app that takes in different upload file types, but they each need to be handled differently depending on the type of upload.
- Serializers for formatting data into json before sending it to the frontend. The base serializer would have one public method with the default json values common to all the concrete serializers.
- Rails controllers that serve up similar resources. For example, a base deals controller that a flight and hotels deal controller would inherit off.

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
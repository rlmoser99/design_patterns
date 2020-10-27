# Iterator Pattern Notes
Behavioral Design Pattern

**Terminology:**
- List class (?) 
- Iterator - defines an interface for accessing & traversing a collection of elements & keeps track of the current position in the traversal.
- ConcreteIterator - implements the iterator interface with specific algorithms.
- Aggregate/Collection - defines an interface for creating an Iterator object.
- ConcreteAggregate/ConcreteCollections - implements the Iterator creation interface to return an instance of the proper ConcreteIterator.
- Client - works with Iterators & Aggregate/Collection interfaces. Typically, clients do not create iterators on their own.
- Polymorphic Iteration - generalizing the iterator concept.

**Use Cases:**
- To access an aggregate object's contents without exposing its internal representation.
- To support multiple traversals os aggregate objects.
- To provide a uniform interface for traversing different aggregate structures (that is, to support polymorphic iteration).

**GoF Book Insight:**
- The key idea in this pattern is to take the responsibility for access and traversal out of the list object and put it into an iterator object.
- You can create different traversal mechanisms that would "filter" specific objects.
- The list objects create their corresponding iterator, which is an example of a factory method.

**Potential Problems:**

**Book Examples:**

**Other Examples:**
- Add to car wash example to add list of services for each component & for the employee client to summary the time for each component.

**"Real World" Examples:**
- Can be useful when working with database, especially when working with cursors.
- Counting stuff in your aggregate.
- Filtering stuff

**Link Briggs shared for JavaScript:**
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Iterators_and_Generators


## Differences:

### Discord Note:
Here is my composite example with two iterators. The base `Summary` provides the name of each (leaf) service. The `TimeSummary` is used by the `Employee` client class to summarize the time needed for each service.
https://repl.it/@rlmoser/IteratorPattern-CarWash#main.rb




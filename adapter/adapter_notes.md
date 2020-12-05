# Command Pattern Notes
Structural Design Pattern

**Terminology:**
- Adapter Class -> The class that implements the required interface for the ill-fitted object.
- Adaptee Class ->  A class that does not implement the required interface.

**Use Cases:**
- Adapters supports the interface that we need on the outside, but it implements that interface by making calls to an object hidden inside. 
- You can add functionality to the Adapter Class that is not just in the Adaptee Class. 
- NOT USE CASE: When an object only needs a simple/clear modification, you can just monkey-patch instead of creating an adapter class. (Adapters preserve encapsulation at the cost of some complexity. Modifying a class may buy you some simplifications, but at the cost of tinkering with the plumbing.)

**Book Examples:**
- A string needing to use an interface meant for use with files (like `eof`)
- One object using British spelling, needs to use an English spelling interface.

**Other Examples:**

**"Real World" Examples:**
- The object relational mapper used by RoR, Active Record that has to talk to different database systems. 
- Using multiple APIs that have different interfaces.

## Summary:
This seems to be a fairly straightforward pattern to implement when the need arises, like needing to create an interface to work with an API. Although I can't wait to compare it to other similar patterns (Bridge, Proxy, Decorator) to more fully understand it. 

I was a bit annoyed at the Ruby book going into detail about modifying a class. Since this is not using the adapter pattern, I was disappointed that it treated this like any other example & under the heading "An Adaptive Alternative?". Thankfully, the book provided scenarios of when to use this technique and when to use the adapter pattern & ended that section with a summary: 

> Adapters preserve encapsulation at the cost of some complexity. Modifying a class may buy you some simplifications, but at the cost of tinkering with the plumbing.

### Austin's Adapter Example
https://github.com/CouchofTomato/colorize_adapter

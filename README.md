# Design Patterns in Ruby
Find the best pattern for the problem you have. Do not try to find a way to stick in the pattern that you want to use.

## Summary of GoF Patterns
- Template Method: redefines certain steps of an algorithm without changing the algorithm's structure
- Strategy: varies part of an algorithm at runtime
- Observer: helps building a highly integrated system, maintainable and avoids coupling between classes
- Composite: builds a hierarchy of tree objects and interacts with all them the same way
- Iterator: provides a way to access a collection of sub-objects without exposing the under-laying representation
- Command: performs some specific task without having any information about the receiver of the request
- Adapter: helps two incompatible interfaces to work together
- Proxy: allows us having more control over how and when we access to a certain object
- Decorator: vary the responsibilities of an object adding some features
- Singleton: have a single instance of certain class across the application
- Factory: create objects without having to specify the exact class of the object that will be created
- Builder: create complex objects that are hard to configure
- Interpreter: provides a specialized language to solve a well defined problem of know domain

Non-GoF Patterns: Patterns For Ruby
- Domain-Specific Language: build a convenient syntax for solving problems of a specific domain.
- Meta-Programming: gain more flexibility when defining new classes and create custom tailored objects on the fly.
- Convention Over Configuration: build an extensible system and not carrying the configuration burden.

## Template Method
**Intent:** 
Define a skeleton of an algorithm in an operation, deferring some steps to subclasses. Template Method lets subclasses redefine certain steps of a algorithm without changing the algorithm's structure.

**Problem:** 
We have a complex bit of code, but somewhere in the middle there is a bit that needs to vary.

**Solution:** 
The general idea of the Template Method pattern is to build an abstract base class with a skeletal method, which drives the bit of processing that needs to vary by making calls to abstract methods, which are then supplied by the concrete subclasses. The abstract base class controls the higher-level processing and the sub-classes simply fill in the details.

## Strategy
**Intent:** 
Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from clients that use it.

**Problem:** 
We need to vary part of an algorithm— something we previously solved using the Template Method pattern— although we want to avoid its drawbacks, introduced by the fact that it's built around inheritance.

**Solution:** 
To avoid problems introduced by inheritance we should use delegation. Instead of creating subclasses (like in the Template Method pattern), we tear out the varying part of the code and isolate it in its own class and create one of them for each variation. The key idea of the Strategy pattern is to define a family of objects (strategies), which all do (almost) the same thing and support the same interface. Then, the user of the strategy (context) can treat the strategies as interchangeable parts.

## Observer
**Intent:** 
Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.

**Problem:** 
We want to build a system that is highly integrated, that is, a system where every part is aware of the state of the whole. We also want it to be maintainable, so we should avoid coupling between classes.

**Solution:** 
If we want some component (observer) to know about the activities of another one (subject), we could simply hard-wire both classes and inform the former upon some actions performed on the latter. This means that we should pass a reference to the observer when we create the subject, and call some of its methods when the latter changes. However, in this approach we are doing something we want to avoid— increasing coupling. What's more, if we wanted to inform some other observer, we'd have to modify the implementation of the subject so that it notifies the new observer even though nothing has changed. A much better approach is to keep a list of objects interested in the subject changes and define a clean interface between the source of the news (the subject) and the consumers (the observers). That way, whenever there's a change on the subject, we just need to iterate over the list of observers and notify them using the interface we defined.

### Additional Source
https://github.com/davidgf/design-patterns-in-ruby
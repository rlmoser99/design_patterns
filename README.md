# Design Patterns in Ruby
Find the best pattern for the problem you have. Do not try to find a way to stick in the pattern that you want to use.

## Template Method
**Problem:** 
We have a complex bit of code, but somewhere in the middle there is a bit that needs to vary.

**Solution:** 
The general idea of the Template Method pattern is to build an abstract base class with a skeletal method, which drives the bit of processing that needs to vary by making calls to abstract methods, which are then supplied by the concrete subclasses. The abstract base class controls the higher-level processing and the sub-classes simply fill in the details.

## Strategy
**Problem:** 
We need to vary part of an algorithm— something we previously solved using the Template Method pattern— although we want to avoid its drawbacks, introduced by the fact that it's built around inheritance.

**Solution:** 
To avoid problems introduced by inheritance we should use delegation. Instead of creating subclasses (like in the Template Method pattern), we tear out the varying part of the code and isolate it in its own class and create one of them for each variation. The key idea of the Strategy pattern is to define a family of objects (strategies), which all do (almost) the same thing and support the same interface. Then, the user of the strategy (context) can treat the strategies as interchangeable parts.

### Additional Source
https://github.com/davidgf/design-patterns-in-ruby
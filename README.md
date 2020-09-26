# Design Patterns in Ruby
Find the best pattern for the problem you have. Do not try to find a way to stick in the pattern that you want to use.

## Template Method
**Problem:** 
We have a complex bit of code, but somewhere in the middle there is a bit that needs to vary.

**Solution:** 
The general idea of the Template Method pattern is to build an abstract base class with a skeletal method, which drives the bit of processing that needs to vary by making calls to abstract methods, which are then supplied by the concrete subclasses. The abstract base class controls the higher-level processing and the sub-classes simply fill in the details.

## Strategy
**Problem:** 

**Solution:** 

### Additional Source
https://github.com/davidgf/design-patterns-in-ruby
# Factory Pattern Notes
Creational Design Pattern

**Terminology:**
- 2 GoF patterns in this chapter: Factory Method and Abstract Factory. 

**Use Cases:**
- Use the Factory Method when you don’t know beforehand the exact types and dependencies of the objects your code should work with.

**GoF Book Insight:**

**Online Insight:**
- The Factory Method is a design pattern that relies on inheritance. If you make it static, you can no longer extend it in subclasses, which defeats the purpose of the pattern.
- The Factory Method is a creational design pattern that provides an interface for creating objects but allows subclasses to alter the type of an object that will be created.
- The Abstract Factory is a creational design pattern that allows producing families of related or dependent objects without specifying their concrete classes. (If your program doesn’t operate with product families, then you don’t need an abstract factory.)



**Potential Problems:**

**Book Examples:**

**Other Examples:**
- Strategy Pattern in chess game -> can it be adapted to factory?

**"Real World" Examples:**


## Differences:

### Discord Note:

This may not be the best example for a factory, but I decided to revisit my chess project. Previously, I had the `board` use the strategy pattern to create different movement classes to update the pieces. After reading this chapter, I realized how I could create a Factory to create the different strategies.

https://github.com/rlmoser99/ruby_chess/commit/2f08d56c026672c590f266e7cfc4261ca56b3b62

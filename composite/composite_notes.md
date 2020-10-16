# Strategy Pattern Notes

**Terminology:**
- Component -> Base Class (Interface)
- Leaf Classes -> The simple, indivisible building blocks (tasks) of the process. They must implement the `Component` interface.
- Composite Class -> Higher-Level object that is a component that contains `leaf` classes. 

**Use Cases:**
- You want clients to be able to ignore the differences between compositions of objects and individual objects. Clients will treat all objects in the composite structure uniformly.

**GoF Book Insight:**
- The key to the Composite pattern is an abstract class that represents both primitives and their containers.

**Potential Problems:**


**Book Examples:**
- Baking a cake. Breaking it down into steps, some steps are a collection of smaller steps.

**Other Examples:**
- Cost of Coffee (plain, milk, syrup, etc.)
- Hospital or Doctor's office billing
- Car Wash Services

**"Real World" Examples:**


## Differences:

### Discord Note:
I am going to be leaving soon for my kid's last tennis match this season. Before I leave, I wanted to at least share my code example. I created a car wash with 5 different services (leaf) and 2 combo packages (composite). The car wash's cash register and employee uses these components, but needs to know different information - the register handles the money & the employee needs to know how long it will take them. 
https://repl.it/@rlmoser/CompositePattern-CarWash#main.rb

This is a pretty basic example and fairly similar to the ruby book example of baking a cake. This pattern did not have a big eye-opening moment for me, like the previous patterns. The biggest takeaway from this pattern was the importance of creating a uniform interface for all components. 
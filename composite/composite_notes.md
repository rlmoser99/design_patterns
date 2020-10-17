# Strategy Pattern Notes
Structure Design Pattern

**Terminology:**
- Component -> Base class and defines the interface.
- Leaf Classes -> The simple, indivisible building blocks (tasks) of the process. They must implement the `Component` interface.
- Composite Class -> Higher-Level object that is a component that contains `leaf` classes. 
- Clients -> Classes that use the components.

**Use Cases:**
- You want clients to be able to ignore the differences between compositions of objects and individual objects. Clients will treat all objects in the composite structure uniformly.

**GoF Book Insight:**
- The key to the Composite pattern is an abstract class that represents both primitives and their containers.

**Potential Problems:**
- If all components are not treated equally. For example, what happens if you try to add children to a leaf?
- What should be responsible for adding & removing children.

**Book Examples:**
- Baking a cake. Breaking it down into steps, some steps are a collection of smaller steps.

**Other Examples:**
- Hospital or Doctor's office billing
- Car Wash Services (Problem printing "menu" -> look into recursive solutions, instead of a lot of if statements.)

**"Real World" Examples:**
- Creating a UI Library
- Decision making tree -> break down different tasks that need to happen in different situations.

## Differences:

### Discord Note:
The biggest takeaway from this pattern was the importance of creating a uniform interface for all components - leaf & composite.
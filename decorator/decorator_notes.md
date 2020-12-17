# Command Pattern Notes
Structural Design Pattern

**Terminology:**
- Component - the "real" object, the object that implements the basic component functionality. (simple_writer in the Concrete Component)
- Decorator Class - has reference to a Component.
- Aggregation/composition is the key principle behind many design patterns, including Decorator.
- “Wrapper” is the alternative nickname for the Decorator pattern that clearly expresses the main idea of the pattern. A wrapper is an object that can be linked with some target object. 

**Use Cases:**
- To add responsibility to individual objects dynamically and transparently, without affecting other objects.
- For responsibilities that can be withdrawn.
- When extension by sub-classing is impractical. 

**Book Examples:**

**Other Examples:**
- Changing up the visual of TTT board

**"Real World" Examples:**

## My Example & Thoughts:

This pattern really helped me see how simple it can be to separate the responsibility of objects, for example one for the actual data and one for displaying the data. 

I decided to make a decorator for the symbols in a tic-tac-toe board. This may not be the best example to show off this pattern, but I enjoyed playing around with the forwardable module. 

I did run into some problems making this example, but by the time I realized these issues I was already committed. For example, once a color is added to a letter, I could not easily capitalize it. I was able to find a fairly simple workaround, but I can easily see the limitations of this example. It is important to make sure that any/all of the decorators can be added together in any order.

https://repl.it/@rlmoser/DecoratorPattern-TicTacToeBoard#main.rb

BTW, This example is not an endorsement to teach this pattern for this project. Since TTT is the first OOP project, I think this pattern would over-complicate things.

## TOP Thoughts
I've probably used this pattern a lot more than the others, they are always in Rails projects to decorate active record objects to display data in views. They are also called presenters in the Rails eco system. 

We use a decorator for displaying the course badges on the TOP website https://github.com/TheOdinProject/theodinproject/blob/master/app/decorators/course_decorator.rb


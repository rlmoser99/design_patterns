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

I decided to make a decorator for the symbols in a tic-tac-toe board. This may not be the best example to show off this pattern, but I enjoyed playing around with the forwardable module. 

I did run into some problems making this example, but by the time I realized these issues I was already committed. For example, once a color is added to a letter, I could not easily capitalize it. I was able to find a fairly simple workaround, but I can easily see the limitations of this example. It is important to make sure that any/all of the decorators can be added together in any order.

https://repl.it/@rlmoser/DecoratorPattern-TicTacToeBoard#main.rb

BTW, I do not think this is a good pattern to teach students for the TTT Project. It is the first OOP project therefore I don't think students are ready for it.

## TOP Thoughts


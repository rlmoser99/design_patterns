# Strategy Pattern Notes

**Terminology:**
- Strategy -> Proc that perform the same method
- Context -> User of the different Strategies (named by GoF)

**Notes:**
- This pattern is based on composition and delegation, rather than on inheritance.
- Put the varying algorithm into separate procs.
- These Strategy procs all do the same thing (book example -> formats the report). All of the Strategy objects support exactly the same interface. 
- The Context class can use the Strategies like interchangeable parts. 
- This relieves the Context class of the responsibility for or knowledge of the report file format.
- Like the Template Method, this pattern allows the user to change which variation to use in one place.

**Book Example:**
- Report in HTML and Plain Text
- Computing taxes for residents of different states.

**Other Examples:**
- Do Coffee for Fun ???
- Make Camp Schedules for Different Age Groups
- Same Schedule that goes to parent & to the teachers. (not showing times, bathroom and snack?)
- Different methods for mapping out how to get from A to B.
- Different ways to sort the same data. 
- Something that needs to be decided at run-time.
- List of movies with the rating (G, PG, PG-13, R) - List based on class?
- Nickname Generator
- Catering Options (set-up, clean-up, food delivery)
- Ordering Coffee (report on cost, caffeine or calories)
- Cake Mix instructions - normal, healthy, delicious
- Billing for Web Work - regular vs. friend/family
- Class Schedule for regular and AP classes
- DI Challenge with supplies - less for older kids.

**"Real World" Examples:**
- 

**Question:**
- Having the context class, pass a particular instance variable into the strategy class method (like challenge.supplies - instead of entire context).
- Have the context class, have a default strategy - like the challenge.age default to Elementary?

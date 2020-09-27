# Strategy Pattern Notes

**Notes:**
- Pull the algorithm out into a separate object.
- Define a family of objects, the strategies, which all do the same thing - in our example, format the report. Not only does each strategy object perform the same job, but all of the objects support exactly the same interface. 
- The user of the strategy, called the 'context' class by GoF, can treat the strategies like interchangeable parts. 
- This relieves the report class of responsibility for or knowledge of the report file format.
- This pattern is based on composition and delegation, rather than on inheritance.
- Template & Strategy allow us to decide which variation to use in one (or few) places.

**Book Example:**
- Report in HTML and Plain Text
- Computing taxes for residents of different states.

**Other Examples:**
- Do Coffee for Fun ???
- Make Camp Schedules for Different Age Groups
- Same Schedule that goes to parent & to the teachers. (not showing bathroom and snack?)
- Different methods for mapping out how to get from A to B.
- Different ways to sort the same data. 
- Something that needs to be decided at run-time.
- List of movies with the rating (G, PG, PG-13, R) - List based on class?
- Nickname Generator

**"Real World" Examples:**
- 
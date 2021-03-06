# Strategy Pattern Notes

**Terminology:**
- Context -> User of the different Strategies (named by GoF)
- Strategy -> Class (or proc/lambda) that perform the same method. 
    - The Ruby Book spent too much time on the lambda's examples. It's not something you'll see often in a Ruby code base, classes are  better because you'll almost always have to add more behavior to it at some point.

**Notes:**
- This pattern is based on composition and delegation, rather than on inheritance.
- Put the varying algorithm into separate procs/classes.
- These Strategy procs/classes all do the same thing (book example -> formats the report). All of the strategies support exactly the same interface. 
- The Context class can use the Strategies like interchangeable parts. 
- This relieves the Context class of the responsibility for or knowledge of the report file format.
- Like the Template Method, this pattern allows the user to change which variation to use in one place.
- Code containing many conditional statements often indicates the need to apply the strategy pattern.
- You can pass in the entire context (self), or even just the information that is needed.
- If there is a meaningful reason, you can make strategy objects optional. The strategies can inherit from a base class, that holds the default behavior.

**Book Example:**
- Report in HTML and Plain Text
- Computing taxes for residents of different states.

**Other Examples:**
- DI Challenge with supplies - less for older kids.
- Same Schedule that goes to parent & to the teachers. (not showing times, bathroom and snack?)
- Nickname Generator
- Billing for Web Work - regular vs. friend/family

**"Real World" Examples:**
- I found a textbook example at work... the code is too big (and probably too secret lol) to share.. but it's an input validator.  Various Form components expect to get some kind of validator, but the strategy you pass into it changes based on the type of input you're expecting.... i.e. email, phone, date etc.  and text inputs can take a handful of strategies to get things like password requirements for length, certain chars etc.
- A game with different difficulties. Say tic-tac-toe. An easy game can just have the computer make a random guess with a harder difficulty an actual game algorithm.
- SnapChat filters - Same video, but the visual changes.
- Sorting different kinds of lists - based on data type.
- Traffic Lights - how their timing is programmed based on the traffic patterns.
- I have an example that being used in production on the TOP site, the discord notification system we set up recently. 
  - The DiscordNotifier class is the context: https://github.com/TheOdinProject/theodinproject/blob/master/app/services/discord_notifier.rb 
  - A FlagSubmission notification strategy: https://github.com/TheOdinProject/theodinproject/blob/master/app/services/notifications/flag_submission.rb 
  - And a DailySummary notification strategy: https://github.com/TheOdinProject/theodinproject/blob/master/app/services/notifications/daily_summary.rb

# Command Pattern Notes
Behavioral Design Pattern

**Terminology:**
- Command Class -> classes that have a common interface & is created by a ___
- Composite Command Class -> class that groups different commands
- ConcreteCommand
- Client
- Invoker
- Receiver



**Use Cases:**
- When you need to perform a series of operations for which each operation has a substantial "start-up" cost when done alone. For example, connecting to a database.
- Madeleine uses this pattern to modify its in-memory copy of the data.
- 

**GoF Book Insight:**

**Potential Problems:**

**Book Examples:**
-  Making a UI button that is used to do multiple things. Create each Command class that you provide for each button that is created.
- Combine with Composite Pattern to make a installation process of creating a file, copy file, delete file, etc.


**Other Examples:**
- Code Maker - create 3 ways to cipher text - ceasar, rotate, backward. Keep track of what order they are done it to un-do it!!! (not sure this fits) -> create email, text, etc that can use these to send @message.
- create tasks that happen - turn light on/off. add 10/-10
- remote for drone (turn on/off, etc)
- Create actions to save class to Marshall, load class

**"Real World" Examples:**
- ActiveRecord is a classic example 

## Summary:
Commands are useful for keeping a running list of things that your program needs to do, or for remembering what it has already done. 

Command decouples the object that invokes the operation from the one that knows how to perform it



## Differences:

### Discord Note:
Chess - strategy or command?

https://www.baeldung.com/java-command-pattern
implementing four components: the Command, the Receiver, the Invoker, and the Client.


should ultra one keep track of one by one (decrypt one at a time?)
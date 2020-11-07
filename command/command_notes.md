# Command Pattern Notes
Behavioral Design Pattern

**Terminology:**
- Command Class -> classes that have a common interface (`execute` and `unexecute`) and is used by the Invoker.
- Composite Command Class -> class that groups different commands & uses the same interface.
- Client -> class that creates an Invoker & provides it a Command class.
- Invoker -> class that is given a Commands, but it only knows that the command interface (`execute` and `unexecute`).
- Receiver -> class that is changed by the command when it is invoked.

**Use Cases:**
- When you need to perform a series of operations for which each operation has a substantial "start-up" cost when done alone. For example, connecting to a database.
- Madeleine uses this pattern to modify its in-memory copy of the data.

**GoF Book Insight:**

**Potential Problems:**

**Book Examples:**
-  Making a UI button that is used to do multiple things. Create each Command class that you provide for each button that is created.
- Combine with Composite Pattern to make a installation process of creating a file, copy file, delete file, etc.

**Other Examples:**
- Code Maker - create 3 ways to cipher text - ceasar, rotate, backward. Keep track of what order they are done it to un-do it!!! (not sure this fits) -> create email, text, etc that can use these to send @message.
- create tasks that happen - turn light on/off. add 10/-10
- remote for drone (turn on/off, etc)
- Create commands that serialize and deserialize objects

**"Real World" Examples:**
- ActiveRecord is a classic example 

## Summary:
Commands are useful for keeping a running list of things that your program needs to do, or for remembering what it has already done. 

Command decouples the object that invokes the operation from the one that knows how to perform it

When using a Composite Command, `unexecute` should call `unexecute` in the reverse order of the Commands.

TIP: Make sure that you really this complexity before you use this pattern.

## Differences:

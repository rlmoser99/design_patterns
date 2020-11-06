# Command Pattern Notes
Behavioral Design Pattern

**Terminology:**
- Command Class -> classes that have a common interface (`execute` and `unexecute`) and is used by the Invoker.
- Composite Command Class -> class that groups different commands & uses the same interface.
- Client -> class that creates an Invoker & provides it a Command class.
- Invoker -> class that is given a Commands, but it only knows that the command interface (`execute` and `unexecute`).
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

When using a Composite Command, `unexecute` should call `unexecute` in the reverse order of the Commands.

TIP: Make sure that you really this complexity before you use this pattern.

## Differences:

### Discord Note:
I'm a bit perplexed trying to figure out what would be the receiver & invoker in my example, so I'll just share what my original example. I'd love to talk this out as other people look at it.

For my example, I am using a few terms very loosely (like "encryption" and "unsend"). An `Encryption` (command) is executed/unexecuted by the `Message` (invoker). The `MessageEncryptor` (client) creates a `Message` and provides it an `Encryption` to send/unsend. 

In addition, I did create a composite command, because this is where I think this pattern will be very useful.

Repl.it Link:
https://repl.it/@rlmoser/CommandPattern-Encryption#main.rb

# RECEIVER:

The client creates a ConcreteCommand object and specifies its receiver.

The ConcreteCommand object invokes operations on its receiver to carry out the request.

MESSAGE -> An Invoker object stores the ConcreteCommand object.

MESSAGE-ENCRYPTOR -> The client creates a ConcreteCommand object and specifies its receiver.

# CURRENT

The client creates a ConcreteCommand object and specifies its receiver.
  The `MessageEncryptor` creates `Encryption` and creates `Message`.

An Invoker object stores the ConcreteCommand object.
  The `Message` stores the `Encryption`.

The invoker issues a request by calling Execute on the command.
  The `Message` will execute or unexecute `Encryption`.

The ConcreteCommand object invokes operations on its receiver to carry out the request.
  The `Encryption` alters the `Message`.

# FUTURE

The client creates a ConcreteCommand object and specifies its receiver.
Client/ -> creates Encryption and specifies Message

An Invoker object stores the ConcreteCommand object.
Invoker/Encryptor -> has Message and Encryption

The invoker issues a request by calling Execute on the command.

The ConcreteCommand object invokes operations on its receiver to carry out the request.

Receiver/Message -> has @data

Command/Encryption -> alters Message.data




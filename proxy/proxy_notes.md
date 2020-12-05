# Command Pattern Notes
Structural Design Pattern

**Terminology:**
- Proxy Class -> refers to the subject & has identical interface
- Subject Class 
- 3 different kinds ->
  - Protection Proxy: before delegating calls to the real object, it adds a layer of security. A big advantage of this approach is that it gives us separation of concerns, as the proxy takes care of access control, while the real object is only concerned about business logic.
  - Virtual Proxy: it delays the creation of an object until it is used. Like lazy loading.
  - Remote Proxy: when the object we want to use is in another machine and it should be fetched across the network, the proxy handles all the connection complexity, while the client can use the object as if it was in the same machine.

**Use Cases:**
 - When an object should be accessed with authorization
 - When an object is on a different server
 - When creating an object is expensive to create, you can delay creation until it is used.

**Book Examples:**

**Other Examples:**
- Twitter Post With User
- Password Manager
- Medicine List
- Weekly Diary
- Schedule
- Test Scores
- Reminders!!!


**"Real World" Examples:**

## My Example & Thoughts:
I created a simple protection proxy example. It creates 3 `reminders`, 2 `secret_reminders` for me and 1 `secret_reminder` for you. These reminders will print out, but will error out when it tries to print out your secret reminder.
https://repl.it/@rlmoser/ProxyPattern-Reminders#main.rb

The Ruby book discussed using `method_missing` and using `send` to essentially forward the message, but I decided to not implement that for this example. Not only does the book mention that this obscures the code, but I've heard that using `send` is a code smell.

Advantage of having a separation of concerns - security & data.

## TOP Thoughts

A better name might be surrogate

Could see using Adapters & Proxy Pattern together.

Forwardable module - does a similar thing as :send & will be used in Decorator.

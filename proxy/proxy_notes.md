# Command Pattern Notes
Structural Design Pattern

**Terminology:**
- Proxy Class -> refers to the subject & has identical interface
- Subject Class 
- 3 different kinds ->
  - Protection Proxy: before delegating calls to the real object, it adds a layer of security. A big advantage of this approach is that it gives us separation of concerns, as the proxy takes care of access control, while the real object is only concerned about business logic.
  - Remote Proxy: when the object we want to use is in another machine and it should be fetched across the network, the proxy handles all the connection complexity, while the client can use the object as if it was in the same machine.
  - Virtual Proxy: it delays the creation of an object until it is used.

**Use Cases:**

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

## Summary:



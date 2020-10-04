# Strategy Pattern Notes

**Terminology:**
- Subject Class -> The class with the changing information.
- Observer Class(es) -> The class(es) that need the subject's changing information.
- Pull Method -> The Observer has one method whose only argument in the Subject (the observer has to pull whatever details about the change out of the subject)
- Push Method -> Has the Subject send the Observer a lot of details about the change.

**Notes:**
- Use when changing one object requires changing other objects, and you don't know how many objects might need to be changed.
- Use when an object should notify other objects without making assumptions about who those objects are (so that they can be loosely coupled)
- It is a good idea to keep track of which Subject operations trigger notifications, in the case that you need to can create a template method pattern to trigger notifications after all updates.

**GoF Book Insight:**
- Publish-Subscribe Interaction -> The Subject publishes and the Observer subscribes.
- Change Manager -> An object to maintain a complex dependency relationship between Subjects and Observers. Its purpose is to minimize the work required to make observers reflect a change in their subject, for example: if an operation changes several interdependent subjects, you might have to ensure that their observers are notified after all the subjects have been modified (to avoid notifying observers more then once). (pg. 299)

**Potential Problems:**
- When the Subject could be updated, but the actual value doesn't change -> use a guard clause to prevent redundant changes to triggering `notify_observers`.
- If there are multiple changes in the Subject class that Observer class(es) are watching -> don't trigger `notify_observers` until all changes have been made.


**Book Examples:**
- Employee Class salary changes needs to notify TaxMan Class and Payroll Class.


**Other Examples:**
- Grocery Store -> Changing number of checkers/shelf stockers as the number of shoppers change.
- Stock Price -> Notify when stock prices low, high, or drastic change in the average.


**"Real World" Examples:**

I've read both chapters this morning. I plan to read them again tomorrow. One interesting difference is that the Ruby book does not mention anything about a Change Manager (pg. 299) to help maintain a complex dependency relationship between Subjects and Observers. 
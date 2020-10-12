# Strategy Pattern Notes

**Terminology:**
- Subject Class -> The class with the changing information.
- Observer Class(es) -> The class(es) that need the subject's changing information.
- Pull Method -> The Observer has one method whose only argument in the Subject (the observer has to pull whatever details about the change out of the subject)
- Push Method -> Has the Subject send the Observer a lot of details about the change.

**Use Cases:**
- When an abstraction has two aspects, one dependent on the other. Encapsulating these aspects into separate objects let yous vary and reuse them independently.
- When changing one object requires changing other objects, and you don't know how many objects might need to be changed.
- When an object should notify other objects without making assumptions about who those objects are (so that they can be loosely coupled)

**GoF Book Insight:**
- Publish-Subscribe Interaction -> The Subject publishes and the Observer subscribes.
- It is a good idea to keep track of which Subject operations trigger notifications. When there are more than one, you can use an abstract class & a template method pattern to trigger notifications after all updates.
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

## Differences:
- Ruby book does not mention anything about ConcreteSubject or ConcreteObserver. 
- Ruby book does not mention anything about a Change Manager (pg. 299) to help maintain a complex dependency relationship between Subjects and Observers. 

## Discussion Thoughts:
I am not able to be here for the chat today or the voice chat tomorrow because one of my kids is in a 2-day tennis tournament. Before I leave, I wanted to leave my thoughts. If I have downtime at the tournament, I will check back in.

For a code example, I created a stock market: the `stock` (subject) notifies 3 `monitors` (observers). The price fluctuation happens at random, so it will be different each time it is run.
https://repl.it/@rlmoser/ObserverPattern-StockMarket#main.rb

I found this pattern to be very fascinating because I have never knew that a class could automatically inform other classes of a change. I am reading the Ruby and GoF book and I noticed one interesting difference. 

The most complex case that the Ruby book discussed was if the `Subject` has multiple changes. It suggested using a method, such as `changes_complete` to handle notifying `Observers`.

The GoF book went a step further and suggested using a `Change Manager` class for more complex situations, such as having multiple `Subjects` that need to complete changes before notifying `Observers`. 

If I had more time this week, I could have made my code example more complex and use a `Change Manager` for multiple stocks. For example, I could add `monitors` to indicate the stock with the highest price above average each day, the lowest price below average each day, etc. 
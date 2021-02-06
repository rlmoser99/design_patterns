# Singleton Pattern Notes
Creational Design Pattern

**Use Cases:**
- Ensure that a class has just a single instance. Why would anyone want to control how many instances a class has? The most common reason for this is to control access to some shared resource—for example, a database or a file.
- Just like a global variable, the Singleton pattern lets you access some object from anywhere in the program. However, it also protects that instance from being overwritten by other code.
- All implementations of the Singleton have these two steps in common:
  - Make the default constructor private, to prevent other objects from using the new operator with the Singleton class.
  - Create a static creation method that acts as a constructor. Under the hood, this method calls the private constructor to create an object and saves it in a static field. All following calls to this method return the cached object.
- When is Singleton unnecessary? Short answer: most of the time. Long answer: when it's simpler to pass an object resource as a reference to the objects that need it, rather than letting objects access the resource globally. The real problem with Singletons is that they give you such a good excuse not to think carefully about the appropriate visibility of an object. Finding the right balance of exposure and protection for an object is critical for maintaining flexibility.

The Singleton pattern can mask bad design, for instance, when the components of the program know too much about each other.

**"Real World" Examples:**
`ActiveSupport`, which is a library of utility classes used by Rails. For example, `Inflections` class is a singleton, which saves space and ensures that the same inflection rules are available everywhere. In addition `rake`, Ruby's build utility, also uses a singleton, the `Rake::Application` object.

Kevin said "I've only seen singleton's used for configuration in the ruby sphere. Usually in gems and for the initialization process in rails."

## My Example & Thoughts:
NATO Alphabet idea

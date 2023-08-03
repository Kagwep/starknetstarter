# Cairo Programming Language Study

This repository serves as documentation for  activities in studying the Cairo programming language and Starknet

## Day 1

### Activities

# Cairo Variables and Mutability

This section of the README provides an overview of variables and mutability in the Cairo programming language.

## Immutable Variables

- Variables in Cairo are immutable by default.
- Immutable variables cannot be reassigned after being initialized.
- Attempting to assign a new value to an immutable variable will result in a compilation error.

## Mutable Variables

- Mutable variables can be created by using the `mut` keyword.
- Mutable variables allow the value to be changed after initialization.
- The `mut` keyword conveys intent and indicates that the variable's value can be modified.

## Constants

- Constants in Cairo are similar to immutable variables but with some differences.
- Constants are declared using the `const` keyword and must be annotated with their type.
- Constants are always immutable and have a global scope.

## Variable Shadowing

- Variable shadowing refers to declaring a new variable with the same name as a previous variable.
- The new variable overshadows the previous one within its scope.
- Shadowing allows for reusing variable names and can be useful for type conversions or creating new values.

---
# Cairo Data Types

This section of the README provides an overview of data types in the Cairo programming language, including scalars and compounds.

## Scalar Types

### Felt Type

- Cairo's default type is `felt252`, which represents a field element.
- Field elements are integers in the range 0 <= x < P, where P is a large prime number.
- Arithmetic operations on field elements are performed modulo P.

### Integer Types

- Cairo provides various integer types with explicit sizes, such as `u8`, `u16`, `u32`, `u64`, and more.
- Integer types come with added security features, including overflow checks.

### Boolean Type

- The Boolean type in Cairo is specified using `bool` and has two possible values: `true` and `false`.
- Booleans are used in conditionals and control flow statements.

### Short String Type

- Cairo doesn't have a native string type, but short strings can be stored inside `felt252` variables.
- Short strings have a maximum length of 31 characters.

## Type Casting

- Cairo supports type casting using the `try_into()` and `into()` methods.
- The `try_into()` method allows safe type casting with an `Option<T>` return type.
- The `into()` method is used for type casting when success is guaranteed.

## Tuple Type

- Tuples are used to group values of different types into a single compound type.
- Tuples have a fixed length and can be created using parentheses and comma-separated values.
- Destructuring tuples allows accessing individual values.

## Unit Type

- The unit type `()` represents a type with only one value, which is an empty tuple.

---

# Cairo Functions

This section of the README explains how functions work in Cairo programming language. Functions are an essential part of Cairo code and are used for code organization and reusability.

## Function Definition

- Functions are defined using the `fn` keyword followed by the function name and a set of parentheses.
- The function body is enclosed in curly brackets `{}`.
- Functions can be called from other functions by using their name followed by parentheses.

## Naming Conventions

- Cairo follows the snake case naming convention for function and variable names.
- Function and variable names are written in lowercase with underscores separating words.

## Parameters

- Functions can have parameters, which are special variables that are part of the function's signature.
- Parameters allow passing values to the function when it is called.
- Parameter types must be explicitly declared in the function signature.

## Named Parameters

- Cairo supports named parameters, which allow specifying the names of arguments when calling a function.
- Named parameters make function calls more readable and self-descriptive.
- To use named parameters, specify the name of the parameter followed by a colon and the value.

## Statements and Expressions

- Function bodies are made up of a series of statements optionally ending in an expression.
- Statements are instructions that perform actions and do not return a value.
- Expressions evaluate to a resultant value and are the main building blocks of Cairo code.

## Functions with Return Values

- Functions in Cairo can return values to the code that calls them.
- The return type of a function is declared after an arrow (`->`) in the function signature.
- The return value of a function is the value of the last expression in the function body.
- Functions can return values explicitly using the `return` keyword or implicitly by the last expression.

---


### Challenges


## Day 2
## Common Collections

Cairo1 provides a set of common collection types that can be used to store and manipulate data. These collections are designed to be efficient, flexible, and easy to use.

### Array

An array is a collection of elements of the same type. You can create and use array methods by importing the `array::ArrayTrait` trait.

Arrays are immutable, which means that it is not possible to modify the elements of an array once they've been added. You can only add elements to the end of an array and remove elements from the front of an array.

To access array elements, you can use the `get()` or `at()` array methods.

* The `get()` method returns an `Option<Box<@T>>`, which means it returns an option to a Box type containing a snapshot to the element at the specified index if that element exists in the array. If the element doesn't exist, `get` returns `None`.
* The `at()` method, on the other hand, directly returns a snapshot to the element at the specified index using the `unbox()` operator to extract the value stored in a box. If the index is out of bounds, a panic error occurs.

### Span

A `Span` is a struct that represents a snapshot of an `Array`. It is designed to provide safe and controlled access to the elements of an array without modifying the original array.

To create a `Span` of an `Array`, call the `span()` method.



### Activities

### Challenges

[Write a Cairo program that calculates the sum of two numbers and prints the result](./withscarb/tasks/src/addtwo.cairo)

[Write a Cairo program that checks if a given number is prime or not.](./withscarb/tasks/src/primeornot.cairo)

[Compare pass-by-value and pass-by-reference in Cairo, providing code examples for each.](./withscarb/tasks/src/pbvpbr.cairo)


[ Develop a Cairo program that sorts an array of integers in ascending order using a sorting algorithm of your choice.](./withscarb/tasks/src/sortarray.cairo)

## Day 3

### Activities

# Control Flow Summary

Control flow is a foundational concept in programming, enabling conditional execution and repetitive tasks. In Cairo programming language, control flow is achieved through **if expressions** and **loops**.

## if Expressions

- **if expressions** enable conditional branching.
- You specify a condition, followed by code to execute if the condition is true (inside `if` block), and optionally, an alternative code to execute if the condition is false (inside `else` block).
- Conditions must evaluate to a boolean (`bool`) value.

## Repetition with Loops

- **Loops** facilitate the repetition of code.
- Cairo features a simple `loop` construct that continues executing code indefinitely until manually stopped.
- The `break` statement is employed to prematurely exit a loop.
- Using `continue` skips the remaining code in the current iteration and proceeds to the next.

## Returning Values from Loops

- Loops are often used for retrying operations or checking conditions until satisfied.
- Values can be returned from a loop using the `break` statement, allowing the retrieval of results from within the loop.

Control flow constructs like if expressions and loops provide the essential mechanisms for creating dynamic and adaptable programs in Cairo.


### Challenges

[Write a Cairo program that determines if a given number is positive, negative, or zero using conditional statements.](./withscarb/tasks/src/numbersdet.cairo)

[Explain the purpose and usage of loops in Cairo, providing an example for each type of loop.](./withscarb/tasks/src/)

[Implement a Cairo program that finds the factorial of a given number using a loop.](./withscarb/tasks/src/factorial.cairo)


[Develop a Cairo program that calculates the Fibonacci sequence up to a given number using recursion.](./withscarb/tasks/src/fibo.cairo)

[- Investigate and explain the concept of tail recursion and its significance in optimizing recursive functions in Cairo.](./withscarb/tasks/src/average.cairo)

## Day 4

### Activities

# Packages and Crates

## Crate

A **crate** is the smallest unit of code considered by the Cairo compiler. Even a single source file is treated as a crate. Crates can include modules and span multiple files.

## Crate Root

The **crate root** is the `lib.cairo` source file where compilation starts. It acts as the root module for the crate. More about modules is covered in the "Defining Modules to Control Scope" section.

## Package

A **Cairo package** is composed of one or more crates. It is described by a `Scarb.toml` file that defines how to build these crates. This modular approach enhances code organization and dependency management.

## Creating a Package with Scarb

To initiate a Cairo package, use the `scarb` command-line tool:


scarb new my_package

# Defining Modules to Control Scope

In this section, we delve into modules, paths, and the `use` keyword, which collectively provide a structured approach to code organization and scope control.

## Modules Cheat Sheet

* Modules are declared in the crate root, either inline using curly brackets or in separate files.
* Submodules are declared in files outside the crate root, organized within directories named after parent modules.
* Modules enable referencing code within the same crate using paths.
* The `use` keyword simplifies references by creating shortcuts to items, reducing lengthy paths.

## Grouping Related Code in Modules

* Modules enhance code readability and reusability by grouping related code within a crate.
* Modules can be structured hierarchically, with submodules nested within parent modules.
* For example, in a restaurant simulation, front-of-house and back-of-house functionalities can be organized using modules and submodules.
* Modules provide a logical organization, making code navigation easier and aiding in locating specific sections.
* The crate root (typically `src/lib.cairo`) serves as the root module in the crates module structure.

## Module Tree

* The module arrangement resembles a tree, similar to a directory structure in a file system.
* Modules can be nested within each other, creating parent-child relationships.
* The module tree originates from the crates explicit name and extends into various modules.

## Benefits of Modules

* Modules contribute to well-structured and comprehensible Cairo crates, offering effective code organization and refined scope management.


# Paths for Referring to Items in the Module Tree

When working with Cairo, referring to items within the module tree is akin to navigating a filesystem, achieved through the use of paths.

## Path Types

- **Absolute Path:** Begins from the crate root, including the crate name, forming the full path.
- **Relative Path:** Starts from the current module, omitting the crate name for shorter paths within the same crate.
- Paths are composed of identifiers separated by double colons (::).

## Example Illustration

Consider the restaurant simulation example from Listing 6-1. To call the `add_to_waitlist` function from `eat_at_restaurant`, we can use both absolute and relative paths.

- **Absolute Path:**
  restaurant::front_of_house::hosting::add_to_waitlist(); // ✅ Compiles

- **Relative Path:**
  front_of_house::hosting::add_to_waitlist(); // ✅ Compiles

## Utilizing `super`

- When deciding whether to use `super`, consider whether items will be moved separately or alongside their consumers.
- `super` allows referencing items in the parent module.

fn deliver_order() {}

mod back_of_house {
    fn fix_incorrect_order() {
        cook_order();
        super::deliver_order();
    }

    fn cook_order() {}
}

# Bringing Paths into Scope with the `use` Keyword

The `use` keyword in Cairo simplifies the process of referencing items within the module tree by creating shortcuts to paths. It enables:

## Path Simplification

- The `use` keyword creates shortcuts to paths, making function calls and item access more concise.

## Scope of `use`

- `use` statements are confined to the block or module where they are defined.
- They do not apply outside of their scope.

## Idiomatic Use Paths

- For functions and items, its idiomatic to use the parent module in the path.
- For other items like structs, enums, and traits, specifying the full path is idiomatic.

## Aliasing with `as`

- Aliasing using `as` avoids naming conflicts when importing items.
- Especially helpful when importing items with the same name.

## Importing Multiple Items

- Importing multiple items from the same module can be done using curly braces `{}`.

## Re-exporting Names

- The `use` keyword can re-export items, making them available for others to bring into their scope.
- Useful when the internal structure differs from the external interface.

## Using External Packages with Scarb

- To use external packages in Cairo with Scarb, follow the steps outlined in the official documentation.

(Note: Dependencies system is still a work in progress.)


# Separating Modules into Different Files

-To enhance code organization and manage larger modules more effectively, you can divide module definitions into separate files. Heres how:

## Extracting Modules to Files

1. Remove the code within curly brackets for the module you intend to move.
2. Place a `mod module_name;` declaration in the original file.
3. Create a new file with the same name as the module, such as `module_name.cairo`.
4. Transfer the extracted code to the new file.

## Moving a Child Module

1. Modify the original file to declare the child module.
2. Create a directory named `src/module_name/`.
3. Inside the directory, create a `module_name.cairo` file.
4. Put the child modules code inside `module_name.cairo`.

The module tree structure remains unaffected, and function calls referencing these modules will function smoothly across distinct files.

Note: The `use` statement doesnt impact compiled files. The `mod` keyword designates modules, and Cairo seeks code within a file matching the modules name.


### Challenges

[Write a Cairo function that calculates the area of a rectangle given its length and width.](./withscarb/tasks/src/rectangle.cairo)

[ Implement a Cairo function that checks if a given string is a palindrome.](./withscarb/tasks/src/palindrome.cairo)

[Explore the concept of function overloading in Cairo and provide an example illustrating its usage.](./withscarb/tasks/src/overloading.cairo)

[Develop a Cairo library that provides functions for performing common mathematical operations (e.g., square root, logarithm, trigonometric functions).](./withscarb/tasks/src/lib.cairo)


## Day 5

### Activities

## Defining and Instantiating Structs

Structs are a way to group related values with named fields, allowing for flexible data structure definitions.

### Struct Definition

- Use the `struct` keyword followed by the struct's name.
- Inside curly brackets, declare fields with names and types.

### Creating Struct Instances

- Specify the struct's name.
- Use curly brackets to set field values as key: value pairs.

### Accessing and Modifying Fields

- Utilize dot notation to access specific field values.
- For mutable instances, modify fields using dot notation.

### Implicit Return with Structs

A new struct instance can be implicitly returned as the final expression in a function.

### Field Initialization Shorthand

When parameter names match struct field names, use the field init shorthand for simpler struct creation.

## An Example Program Using Structs

To understand the usage of structs, we'll create a program that calculates the area of a rectangle. We'll start with different approaches and progressively refine the code.

### Initial Approach

We begin with a basic program that calculates the area of a rectangle using separate `width` and `height` variables.

### Refactoring with Tuples

In the next step, we refactor the program to use tuples, which group the dimensions of the rectangle. However, accessing tuple elements by index can lead to less clear code and potential errors.

### Refactoring with Structs

To improve code readability and reduce the chance of errors, we introduce a `Rectangle` struct. This struct has named fields for `width` and `height`, making the code more intuitive and self-explanatory.

### Adding Useful Functionality with Trait

While attempting to print a `Rectangle` instance, we encounter an error because the `print` trait is not implemented for the struct. To address this, we implement the `PrintTrait` trait for the `Rectangle`, allowing us to print its details effectively.

## Method Syntax

Methods in Cairo are similar to functions but are defined within the context of a type. They are called using method syntax and have the `self` parameter as their first parameter, representing the instance of the type the method is being called on. Unlike Rust, methods cannot be directly defined on types in Cairo. Instead, you must define a trait and an implementation associated with the type to add methods.

### Defining Methods

Methods are declared with the `fn` keyword and a name within a trait block. The `self` parameter determines the type the method can be used with. The implementation is provided in an `impl` block associated with the trait. Methods are accessed using dot notation and follow an instance of the type.

### Example: Defining an Area Method

We refactor the `area` function, which calculates the area of a `Rectangle` instance, into an `area` method defined on the `RectangleTrait` trait. The implementation is provided in the `RectangleImpl` `impl` block.

### Naming Conventions and Self Parameter

Methods must have a parameter named `self` as their first parameter, representing the instance of the type. The `@` snapshot operator is used in method signatures to indicate an immutable snapshot of the instance is taken.

### Example: Adding a Width Method

We add a `width` method to the `RectangleTrait` trait that checks if the width of a `Rectangle` is greater than 0. This demonstrates that methods can share names with fields.

### Methods with More Parameters

Methods can take multiple parameters beyond the `self` parameter. We implement a `can_hold` method that checks if one `Rectangle` can hold another `Rectangle`.

### Accessing Implementation Functions

Functions defined within a trait and impl block can be accessed using the `::` operator on the implementation name. These functions are often used as constructors.

### Multiple `impl` Blocks

Each struct can have multiple trait and impl blocks. These blocks can be used to organize and group related methods.


### Challenges

[You are developing a simple contact management system in Cairo. Create a struct called "Contact" to store information about a person, including "name" (string), "phone" (string), and "email" (string). Implement a method named "printContact" that prints the contact's details in a user-friendly format.](./withscarb/tasks/src/contact.cairo)

[- As part of a weather application, design a struct called "WeatherData" to store weather information, including "temperature" (uint32), "humidity" (uint32), "windSpeed" (uint32), and "description" (string). Implement a method named "isCold" that returns true if the temperature is below a certain threshold (e.g., 10 degrees Celsius) and false otherwise.](./withscarb/tasks/src/weather.cairo)

[You are building a library management system in Cairo. Create a struct called "Book" to represent a book, including fields for "title" (string), "author" (string), "isbn" (string), and "isAvailable" (bool). Implement a method named "borrowBook" that marks the book as unavailable when borrowed and "returnBook" that marks it as available when returned.](./withscarb/tasks/src/libsys.cairo)

[- In a gaming application, you need to handle player inventory. Design a struct called "InventoryItem" to represent an item, including fields for "name" (string), "description" (string), "quantity"  and "equipped" (bool. Implement a method named "equipItem" that sets the "equipped" field to true for the specified item and "unequipItem" that sets it to false.](./withscarb/tasks/src/gamingapp.cairo)

[- As part of an e-commerce platform, create a struct called "Product" to represent a product, including fields for "name" (string), "price"  "stockQuantity" (u32), and "seller" Implement a method named "purchase" that allows a user to buy a product, reducing the stock quantity and transferring the payment to the seller.](./withscarb/tasks/src/commerce.cairo)

[- You are developing a ride-sharing application on StarkEx. Design a struct called "Ride" to represent a ride booking, including fields for "driver" (address), "passenger" , "startLocation" (string), "endLocation" (string), "startTime" and "fare" (u256). Implement a method named "endRide" that calculates the final fare based on the ride duration and distance and transfers the payment to the driver.](./withscarb/tasks/src/ride.cairo)


## Day 6

[- Create a new cairo package named "MathUtil" using Scarb. Inside the package, create a library crate named "Calculator" that provides basic arithmetic operations such as addition, subtraction, multiplication, and division. Write a main program (binary crate) that imports the "Calculator" library and demonstrates each operation with sample inputs.](./withscarb/mathutil/src/lib.cairo)

[- In the "MathUtil" package, create another library crate named "Geometry" that includes functions to calculate the area and perimeter of basic geometric shapes like rectangles and circles. Write a main program that imports the "Geometry" library and calculates the area and perimeter of a rectangle and a circle.](./withscarb/mathutil/src/lib.cairo)


[- Extend the "MathUtil" package by adding a binary crate named "CalcApp." This binary crate should allow the user to interactively choose an arithmetic operation (addition, subtraction, multiplication, or division) and input two numbers to perform the chosen operation using the functions from the "Calculator" library crate.](./withscarb/mathutil/src/lib.cairo)

[- Inside the "MathUtil" package, create a new library crate named "Statistics" that provides functions for calculating the mean, median, and mode of a list of numbers. Write a main program (binary crate) that imports the "Statistics" library and calculates these statistical measures for a given list of numbers.](./withscarb/mathutil/src/lib.cairo)

[- Build a more advanced Cairo package named "BankSystem" with multiple crates representing different components of a bank system. Create library crates for "Account" to handle account management, "Transaction" to manage transactions, and "Bank" to manage overall bank operations. Implement a main program (binary crate) that demonstrates the interactions between these crates to simulate a basic bank system.](./withscarb/banksystem/src/lib.cairo)

[- In the "BankSystem" package, create a binary crate named "ATM" to simulate an Automated Teller Machine (ATM). The ATM should allow users to perform various operations such as checking account balance, withdrawing money, and transferring funds between accounts using functions from the "Account" and "Transaction" library crates](./withscarb/banksystem/src/lib.cairo)



## Day 7

### Activities

## Generic Data Types

Generics in Cairo provide flexibility for defining item declarations such as structs, functions, enums, traits, implementations, and methods. This chapter explores the effective use of generic types with these constructs.

### Generic Functions

When defining functions that use generics, generic type parameters are specified in the function signature, allowing functions to work with various concrete data types.

### Constraints for Generic Types

Constraints can be added to generic types by specifying which traits they must implement. This enhances function logic and effective use of generic types.

### Generic Structs

Structs can be defined with generic type parameters, making them flexible enough to hold different types.

### Generic Enums

Enums can hold generic data types in their variants, providing versatility in expressing abstract concepts.

### Generic Methods

Methods can be implemented on structs and enums with generic type parameters, extending their functionality.

### Constraints for Generic Methods

Constraints on generic types can be applied to methods, allowing implementations for specific types.

### Nested Generic Methods

Generic methods can be defined inside generic traits, enabling more complex behaviors.

### Challenges

[- Create a generic function called "swap" that takes two arguments of any data type and swaps their values. Demonstrate its usage with integers and strings.](./withscarb/tasks/src/gamingapp.cairo)

[- Design a trait called "Printable" that defines a method "print" to be implemented by any struct. Implement the "Printable" trait for the "Contact" struct from the previous question and print the contact's details using the "print" method.](./withscarb/tasks/src/printable.cairo)

[- You are developing a basic mathematical library in Cairo. Create a generic function called "average" that calculates the average of an array of numbers. Use the "average" function to find the average of  numbers.](./withscarb/tasks/src/average.cairo)


[- Implement a trait called "Sortable" that defines a method "sort" for sorting an array of elements. Implement "Sortable" for the "Book" struct from the previous question and demonstrate sorting an array of books based on their titles.](./withscarb/tasks/src/sorting.cairo)


[- As part of an inventory management system, design a generic struct called "Inventory" that can hold an array of items of any data type. Implement methods "addItem" and "removeItem" to add and remove items from the inventory. Demonstrate the usage of the "Inventory" struct with different types of items.
](./)

[- Create a trait called "Combinable" that defines a method "combine" to merge two objects of the same type. Implement "Combinable" for the "WeatherData" struct from the previous questions, allowing you to combine weather data from two different sources (e.g., two weather stations).](./withscarb/tasks/src)

## Day 8

### Activities

## How To Write Tests

### The Anatomy of a Test Function

Tests in Cairo are functions annotated with the `test` attribute. They typically involve setting up data, running the code to test, and asserting the expected results.

### Writing a Test

1. Annotate a function with `#[test]` to make it a test function.
2. Run tests using the `cairo-test` command. It builds a test runner binary that executes the annotated functions and reports pass/fail results.

### Creating a Test Project

1. Create a new project called "adder" using the command `scarb new adder`.
2. The `cairo_project.toml` configuration file specifies crate roots.

### Writing Test Functions

1. Test functions use the `assert` function to verify conditions.
2. Test results are displayed when running `cairo-test`.

### Customizing Test Names

1. Change the name of a test function by modifying its identifier.
2. Run `cairo-test -- --path src` to see updated test names.

### Failing Tests

1. Introduce a failing test by using the `assert` function with incorrect conditions.
2. Failed tests are reported when running `cairo-test`.

### Checking Results with `assert`

1. Use the `assert` function to ensure conditions evaluate to true.
2. Test results indicate whether assertions passed or failed.

### Testing Methods

1. Use the `assert` function to test methods that return booleans.
2. Test different scenarios using multiple test functions.

### Handling Panics with `should_panic`

1. Use the `#[should_panic]` attribute to mark tests that should panic.
2. Tests pass if they panic; fail if they don't.

### Precise Panics with `should_panic`

1. Specify an expected panic message using the `expected` parameter.
2. Tests pass if they panic with the expected message.

### Running Single Tests

1. Run a specific test using the `-f` flag and the test name.
2. Only the specified test runs, and unmentioned tests are filtered out.

### Ignoring Tests

1. Use the `#[ignore]` attribute to exclude specific tests from regular runs.
2. Ignored tests are indicated when running `cairo-test`.
3. Include ignored tests using `cairo-test --include-ignored` when needed.



### Challenges

- Write a test function to verify the correctness of the "swap" function from a previous question. Test it with integers and strings, ensuring that the values are correctly swapped.

- Develop a test case to check the implementation of the "Printable" trait for the "Contact" struct. Ensure that the "print" method outputs the correct contact details.

...


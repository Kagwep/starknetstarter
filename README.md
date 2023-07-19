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

### Activities

### Challenges

...

## Day 7

### Activities

### Challenges

## Day 8

### Activities

### Challenges

...


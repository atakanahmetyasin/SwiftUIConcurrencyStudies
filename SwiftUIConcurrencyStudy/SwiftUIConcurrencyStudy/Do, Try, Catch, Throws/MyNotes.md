#  My notes about Do, Try, Catch, Throws

// Why do we use them?
Basically we use do, try, catch and throws to handle errors. In our codebase it is difficult to handle all runtime errors by manually. Instead we use do, try, catch and throws and it helps us to handle errors without crashing our application. We use "try" keyword in where a function can potentially throw an error. There are 3 different way of using try. The first one is:
try: This form is used to handle any potential error with catch.
try?: When this form is used, if any error occurs it returns nil or the compiler ask you an optional value instead of throwing an error.
try!: If this form is used with catch block you'll see that warning "'catch' block is unreachable because no errors are thrown in 'do' block". It's not suggested to use but if you use this, you have to be sure that it's not going to throw an error, otherwise you'll get runtime error.

throw: You use throw statement to throw error. To indicate that a function, method, or initializer can throw an error, you write the throws keyword in the function’s declaration after its parameters.
 example: func canThrowErrors() throws -> String


...

Useful Resources: 
https://docs.swift.org/swift-book/documentation/the-swift-programming-language/errorhandling/

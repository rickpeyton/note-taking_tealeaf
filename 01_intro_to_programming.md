# Introduction to Programming with Ruby
*Dec 28, 2014*

***

## Included Modules

Included modules provide additional functionality to the class. In the example
String includes the module Comparable which gives access to its methods.

    "cat".between?('ant', 'zebra')

## Use pry for debugging

    gem install pry

When you want to use pry for debugging you have to require 'pry' and insert a
binding.pry into your file.

    require 'pry'
    a = [1, 2, 3]
    a << 4
    binding.pry
    puts a

When your program gets to binding.pry it will open a new pry session (like irb)
with all of your variables and objects loaded.

## Symbols

Ruby **symbols** are created by placing a colon (:) before a word

  :name
  :a_symbol
  :"this is also a symbol"

A symbol is used to reference something like a string when you don't intend to
print it to the screen or change it. This is often referred to as an immutable.

## Variable Scope

A variabled assigned outside of a do...end block can be reassigned within the
do...end block. A variable assigned outside of a method can not be reassigned
within a method.

When we use for, each, times and other methods that are followed with {} or
do/end we do **not** create a new inner scope.

## 5 Types of Variables

1. Constants
  * Declared by capitalizing every letter in the variable's name. They are used
    for storing data that never needs to change.
2. Global Variables
  * Declared by starting with a $. These are available throughout your entire
    app and override all scope boundaries. Typically avoided in Ruby.
3. Class Variables
  * Declared by starting with two @@. Used when you need to declare a variable 
    related to a class, but each instance of that class does not need its own
    value.
4. Instance Variables
  * Declared by starting with a single @ sign. Can be used throughout the
    current instance of a class.
5. Local Variables
  * Most common type of variable. They start with neither @ or $ and obey all
    scope boundaries.

## Methods

    def say(words)
      puts words
    end

Here **say** is the name of the method. **words** is a parameter. I knew how to
use parameters previously, but I did not know what they were called.
**Arguments** are pieces of information that are sent into a method as
parameters.

**say("hello") passes the argument **"hello"** into the parameters **words**.

### Mutation versus No Mutation

In Ruby some methods can mutate the caller while others do no. Unfortunately you
just have to figure this out by reading the documentation or through
experimentation and repetition.

**array.pop** does mutate while **array.last** does not.

### Ruby allows you to pass methods as arguments to other methods

    def multiply(num1, num2)
      num1 * num2
    end
    multiple(add(20, 45), subtract(80, 10))

Returns 4550

## Conditionals

    if x == 3 then puts "x is 3" end

You must use the **then** keyword when using 1-line syntax

**!** the "not" operator will change the boolean value of the expression to its
opposite.

    !(4 == 4)
    => false

### Order of precedence when evaluating multiple expressions

1. <=, <, >< >= - Comparison
2. ==, != - Equality
3. && - Logical AND
4. || - Logical OR

### Ternary Operator

The ternary operator makes a quick if/else statement that fits on one line.

    true ? "this is true" : "this is not true"
    false ? "this is true" : "this is not true"

### Case Statements

A modification to the if/else syntax and more readable in some scenarios.

    a = 6

    answer = case a
      when 5
        'a is 5'
      when 6
        'a is 6'
      else
        'a is neither 5, nor 6'
      end

    puts answer

## Loops & Iterators

    loop do
      puts "This will keep printing until you hit CTRL + c"
    end

I have never seen **loop do** used in any previous examples.

You can also use the **next** keyword to skip a specific execution of the code.

    i = 0
    loop do
      i += 2
      if i == 4
        next        # skip rest of the code in this iteration
      end
      puts "#{i}"
      if i == 10
        break
      end
    end

### Until loops versus While loops

Until and While loops serve the same purpose. Generally while loops are use, but
an Until loop may be used if it is more expressive given the situation.

### Do/While loops

    begin
      puts "Do you want to do that again?"
      answer = gets.chomp
    end while anwer == 'Y'

This is a classic use for a **do/while** because we want to repeatedly perform
an action based on some condition, but want the action executed at least once no
matter what.

### For loops

    x = gets.chomp.to_i

    for i in 1..x do
      puts i
    end

    puts "Done!"

Cool for loop example.

## Arrays

    array = [1, "Bob", 4.33]
    array.push("another string")

array.push(something) mutates the array and permanently adds something to the
end of the array.

The _shovel operator_ **<<** accomplishes the same thing.

### map method on an array (collect is an alias of map)

    irb :001 > a = [1, 2, 3, 4]
    => [1, 2, 3, 4]
    irb :002 > a.map { |num| num**2 }
    => [1, 4, 9, 16]
    irb :003 > a.collect { |num| num**2 }
    => [1, 4, 9, 16]
    irb :004 > a
    => [1, 2, 3, 4]

Map does not mutate the array so you would have to save the result into a new
array if you wanted to preserve the results.

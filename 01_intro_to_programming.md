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
   Declared by starting with two @@. Used when you need to declare a variable
   related to a class, but each instance of that class does not need its own
   value.
4. Instance Variables
5. Local Variables

    MY_CONSTANT = 'I am available throughout your app.'
    $var = 'I am a Global and am available throughout your app.'

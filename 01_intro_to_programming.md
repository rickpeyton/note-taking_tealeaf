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

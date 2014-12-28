# Introduction to Programming with Ruby
*Dec 28, 2014*

***

## Use pry for debugging

    gem install pry

When you want to use pry for debugging you have to require 'pry' and insert a
binding.pry into your file.

    require 'pry'
    a = [1, 2, 3]
    a << 4
    binding.pry
    puts a

When you program gets to binding.pry it will open a new pry session (like irb)
with all of your variables and objects loaded.

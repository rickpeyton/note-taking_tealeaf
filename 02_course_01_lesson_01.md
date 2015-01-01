# Course 1 Lesson 1

## Asking Questions

* Treat TAs like coworkers
  * Be sure you have tried to solve the problem before asking questions
  * Explain what you have already tried
* Develop your debugging skill. Very important!
* Create a [Gist](https://gist.github.com) or a [Pastebin](http://pastebin.com)
  of your code before posting to the forums. Especially if your problem requires
  pasting code that is longer than 15-20 lines.
  * You usually do not have to paste all of your code to explain the problem.

## Ruby Style

* Most important style requirements
  * Translate tabs to spaces
  * Indent 2 spaces
  * Use snake_case for file_names, method_names, variable_names etc.
  * Use CamelCase for ClassNames
* Reference the [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide)
* Install the rubocop gem (gem install rubocop)
  * Run rubocop in a directory
  * You can specify filenames

## Debugging

* Install pry (gem install pry)
  * require 'pry'
  * put *binding.pry* in your code anywhere you want to initialize the debugger
  * *CTRL+D* to continue when pry is activated
  * Pry loads all of your variables and lets you play around in your code
* Pry is a much better alternative to spraying printouts (what I did before)
* Read the error messages
* Google the error messages
* Search stackoverflow
* Use binding.pry
* Remember that you are not the first person who has experienced a problem
* Consider *Rubber Duck Debugging*
  * Explain the problem from start to finish to someone who does not understand
    programming. This could be a person or an inanimate object (such as the
    rubber duck)
* If you are stuck for more than a couple of hours then stop and check out the
  solutions video (only to the point that gets you unstuck) or ask your question
  in the forum.
  * But be sure to try for a couple of hours first. Take a walk, exercise some
    other part of your brain.

## Variable Scope

* Variables declared in an outerscope can be referenced in innerscope
  * But not inside out
* This is a source of many bugs

## Pass by Reference versus Pass by Value

* Ruby kind of does both
* You just have to experiment and / or read the method documentation

### Pass by Value

    def some_method(obj)
      obj.uniq
    end
    outer_obj = [1, 2, 2, 3, 3, 4]
    outer_obj = some_method(outer_obj)

This is an example of *pass by value* because the method does not mutate the
object and so we need to set outer_obj equal to the output of the method call in
order to retain the return value.

### Pass by Reference

    def some_method(obj)
      obj.uniq!
    end
    outer_obj = [1, 2, 2, 3, 3, 4]
    some_method(outer_obj)

In this example we can pass by reference because the method (uniq with a bang)
does mutate the object.

## The Solutions

* Although initially you may be able to take the approach of code first and then
  watch the solutions you will not be able to maintain that approach throughout
  the courses. Instead you should play around and alternate in and out of the
  solutions or start with the solutions.
* Recommendation from the TAs
  * Follow the solution along if you have absolutely no clue. Make sure you
    understand it, then *here's the important part* do it again on your own.
  * Also if you follow along on the solution, try to adapt what you have learned
    and further build on top of the assignment.

## Use Pseudo Code to Write Your Programs

The steps you will take to write a program.

1. *Problem Definition*: Write in natural language the application you are
   trying to build.
2. *Application Logic*: Thing about the pattern or sequence of steps it takes to
   solve the problem. Use pseudo code to write down the steps without worrying
   about the syntax.

    if our cards total is 21
      then we win 
    otherwise, our cards total is less than 21
      then we want to either hit or stay
    otherwise, our cards total is greater than 21
      then we lost

3. *Verify with real code*: This way you can struggle with the syntax without
   worrying about the logical flow of the program.
4. Don't go too var with pseudo code. Write a little pseudo code then translate
   to Ruby and run it to verify you are working.

## Lesson 1 is local variables only

No instance or global variables! This is not an object oriented programming
challenge so no OO here

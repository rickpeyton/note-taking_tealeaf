Sharing my experience and struggles in Lesson 1

I really enjoyed Lesson 1.

The plan I mapped out for myself is to complete 1 lesson per week for the next
14 weeks (I plan on taking two breaks).

Because I had previously done Learning to Program, made a few simple command
line programs and had worked through the Rails Tutorial, I started Lesson 1 on
Thursday and thought I'd be able to sprint my way through it so that I could
start Lesson 2 on Monday.

I made it - but it still took me 20 hours.

What surprised and excited me is that I overestimated what I had retained from
my previous exercises. The tutorials that I completed had offered a lot
of repetition so the syntax was mostly familiar to me, but the process of
actually starting from a blank editor and working out the algorithms from
scratch was something I had done very little of.

I completely understand why Tealeaf is structured that way now. It exercises a
different part of my brain.

Some other takeaways...

* Love Pry! Had never heard of it before. No more spraying my program!
* Love the Ruby Style Guide so much that I installed [RuboCop](https://github.com/bbatsov/rubocop/blob/master/README.md). Sweet!

My favorite method of the week came from Chris' Tic Tac Toe board

```ruby
def initialize_board
  b = {}
  (1..9).each { |position| b[position] = '' }
  b
end
```

I was able to incorporate something from that into my Blackjack game.

Looking forward to next week!

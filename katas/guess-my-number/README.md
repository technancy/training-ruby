# Guess My Number

You have been asked to build the game engine for a 'guess my number' game.

The game will be played through ruby's `irb` REPL, and can be loaded as follows.

```irb
irb(main):001:0> load "./guess_my_number.rb"
```

Once the game has been loaded the player should think of a number between 1 and
100, and ask the computer to guess their number. To do so they can issue the
command `guess_my_number`, the game will make a guess and return it to the
player.

The player can then issue one of two further commands `higher` or `lower`, to
which the game will return a better guess. This continues until the computer
guesses the number.

The "user interface" for this game has already been written, your task is to
build the game engine.

The "user interface" requires a ruby class `NumberGuesser`, you have been
provided an RSpec executable specification for this class, in the file
`guess_my_number_spec.rb`

To run this specification please run the following command from this directory:

```
$ rspec guess_my_number_spec.rb
```

All of the examples in `guess_my_number_spec.rb` have been marked as pending.
Uncommenting them one at a time should help you to take small steps towards
successful implementation.

You will need to define the `NumberGuesser` class in the `guess_my_number.rb`
file.

When you are running in an `irb` session, you can reload any changes you have
made to the `guess_my_number.rb` file by reloading the game file.

```irb
irb(main):001:0> load "./guess_my_number.rb"
```

Oct 3, 2013

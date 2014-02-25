MontyHall
=========
Monty Hall was the host of a game called "Let's Make a Deal".  In the game, the contestant was given the choice of 3 doors.  Behind one there was a prize.  Behind the other two were worthless gags.  Once the player has chosen their door, the host eliminates one of the remaining doors.  He cannot eliminate a door with the prize.  The contestant is then given the choice of sticking with his door or changing his mind and selecting the remaining door.

A probability brain teaser was based off of the game.  The question is whether a player's chance of winning is better, worse, or the same if they always change their mind and go with the remaining door that wasn't eliminated (instead of their original choice).  For more information you can read the [wiki article on the Monty Hall Problem.](http://en.wikipedia.org/wiki/Monty_Hall_problem)

This program allows you to run 1 or more game scenarios to see if a player does better by sticking with his initial choice or changing his mind.  The number of scenarios can be chosen by setting the testRounds variable.

Each round starts with a random door being chosen.  The same choice is assigned to the Stays plaer and the Changes player.  We then track his outcome if he keeps his original door or changes to the door left by the host.  Both winning percentages are reported.

This is the first program I've written in Ruby (outside of guided homework assignments on Codecademy).  The code works, but, it's rather rough.  I will be cleaning it up as I have time.

===========
Future Optimizations
- allow user to decide if they will 'stay' or 'change' then report back how they did
- provide visualizations of the win/loss records
- create player class which contain most of the code (simplify the code that is involved in running the tests)

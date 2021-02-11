/*:
 ## Exercise: 501
 
 You may know the popular darts game called 501. Players start with a score of 501, and have to work down to zero. Here are the rules:
 
 - Each player plays a “round” where they throw three darts at a board.
 - Each throw can score between 1 and 20 points, which may be doubled or tripled depending where it hits on the board.
 - It is also possible to score 25 for the outer bulls-eye or 50 for the inner bulls-eye.
 
 House rule: At the end of three rounds, whoever is closest to zero without going below zero is the winner.
 
 - callout(Exercise): Imagine you’re a game shark. You want to fool people into thinking you’re terrible at this game, but then come back and beat them in one swoop at the end. Model your game progress using variables.\
 \
 Start with a variable set to `501` to hold your overall score.\
 Create another variable set to `0` to hold the score for each round.\
 For each throw, update the value of the round score by adding points from the throw.\
 At the end of each round, calculate your current overall score by subtracting the round score from it. Assign the new value to your overall score, and re-set the round score to zero.\
 \
 How slowly can you “improve” your performance without arousing suspicion? \
 \
 After each round, `print` some statements that your opponents might make. If you can, use the value of your current score in their statements.
 */
var overall_score = 501
var round_score = 0

var roundone_firstthrow = 5*2
round_score += roundone_firstthrow

var roundone_secondthrow = 10*3
round_score += roundone_secondthrow

var roundone_thirdthrow = 10*2
round_score += roundone_thirdthrow


var current_overall_score = overall_score-round_score
print("overall score for for round one is " + String(current_overall_score))

print("oh! "+String(current_overall_score)+" points is a long way from 0")

var roundtwo_firstthrow = 25
round_score += roundtwo_firstthrow

var roundtwo_secondthrow = 50
round_score += roundtwo_secondthrow

var roundtwo_thirdthrow = 50*2
round_score += roundtwo_thirdthrow

var roundtwo_overall_score = overall_score-round_score
print("overall score for for round two is " + String(roundtwo_overall_score))
print("ok! "+String(roundtwo_overall_score)+" points isn't too bad")

var roundthree_firstthrow = 25*2
round_score += roundthree_firstthrow

var roundthree_secondthrow = 30*2
round_score += roundthree_secondthrow

var roundthree_thirdthrow = 50*3
round_score += roundthree_thirdthrow

var roundthree_overall_score = overall_score-round_score
print("overall score for for round two is " + String(roundthree_overall_score))
print("ok! "+String(roundthree_overall_score)+" points isn't too bad")

round_score = 0






/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 13 of 13

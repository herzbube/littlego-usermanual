---
title: Go rules
weight: 200
resources:
  - name: liberties-corner
    src: "liberties-corner.png"
    title: Liberties in corner
  - name: liberties-edge
    src: "liberties-edge.png"
    title: Liberties on edge line
  - name: liberties-middle-of-board
    src: "liberties-middle-of-board.png"
    title: Liberties in the middle of the board
  - name: capture-3-liberties
    src: "capture-3-liberties.png"
    title: Stone still has all 3 liberties
  - name: capture-2-liberties
    src: "capture-2-liberties.png"
    title: Stone has only 2 liberties left
  - name: capture-1-liberties
    src: "capture-1-liberties.png"
    title: Stone has only 1 liberty left
  - name: capture-0-liberties
    src: "capture-0-liberties.png"
    title: Stone has no liberties left and is captured
  - name: group-connected
    src: "group-connected.png"
    title: A stone group with 2 connected stones
  - name: group-not-connected
    src: "group-not-connected.png"
    title: Stones are not connected
  - name: group-single-stone-liberties
    src: "group-single-stone-liberties.png"
    title: A single stone with 4 liberties
  - name: group-shared-liberties
    src: "group-shared-liberties.png"
    title: Stones in a group share their liberties, in this case for a total of 6 liberties
  - name: group-captured
    src: "group-captured.png"
    title: An entire stone group is captured after all of its liberties have gone.
  - name: suicide-single-stone
    src: "suicide-single-stone.png"
    title: A white stone in the corner would have no liberties, therefore it cannot be played
  - name: suicide-group
    src: "suicide-group.png"
    title: Placing a second white stone would create a stone group, but that group would then have no liberties
  - name: suicide-exception
    src: "suicide-exception.png"
    title: Placing a white stone at "a" captures a black stone and thus creates a new liberty for itself
  - name: ko
    src: "ko.png"
    title: Placing a white stone at "a" is allowed, but then placing a black stone at "b" immediately afterwards is forbidden because it repeats the first position
  - name: life-with-two-eyes
    src: "life-with-two-eyes.png"
    title: The black stone group is alive! White cannot capture it because they cannot play on "a" and "b" simultaneously
---

{{< toc >}}

## Overview

This help section contains only a barebones introduction to the rules of Go. For a more thorough treatment please visit one of the many websites dedicated to the game. For instance, an excellent resource is [Sensei's Library](https://senseis.xmp.net/) while another more hands-on interactive tutorial is available on [online-go.com](https://online-go.com/learn-to-play-go).

## Players

The game is played by two players. One of them plays with black stones, the
other with white stones. Usually black makes the first move, except when there
is a handicap. This introduction does not cover handicap.

## Board

The board is a grid of horizontal and vertical lines. The standard board size
is 19x19, but smaller board sizes are good for teaching games or solving special
Go problems. Little Go allows you to set any board size between 7x7 and 19x19. Only board sizes with an odd number of lines are supported to ensure that there is a center point.

## Intersections

The lines of the board have intersections wherever they cross or touch each
other. Each intersection is called a point. That includes the four corners,
and the edges of the board. Stones are placed on points (intersections), which
might seem unusual if you are coming from chess.

## Moves

Players take alternate turns. When it is their turn, they make a move. A move
usually consists of placing a stone. However, a player may also decide to pass,
in which case it is the other player's turn. If both players pass, the game
is over and the score is calculated to determine who has won the game.

Note that stones can only be placed on empty points. Also note that it is not
possible to move a stone once it has been placed.

## Liberties

Each point (intersection) on the board has a number of lines leading away from
it to adjacent points. When a stone is placed on a point, the number of lines
leading away from it to unoccupied adjacent points are called its "liberties".

For instance, if a stone is placed in a corner at the start of the game it has 2
liberties, if it is placed on an edge line it has 3 liberties, and if it is
placed somewhere in the middle of the board it has 4 liberties.

{{< columns >}}

{{< img name="liberties-corner" size="origin" lazy=false >}}

<--->

{{< img name="liberties-edge" size="origin" lazy=false >}}

<--->

{{< img name="liberties-middle-of-board" size="origin" lazy=false >}}

{{< /columns >}}

Enemy stones that surround one of your stones take away liberties from that
stone. If your stone has no liberties left it is captured. The opponent removes
your stone from the board and places it in a box where at the end of the game
it can be used for scoring. The point where your stone was is now unoccupied
once more.

{{< columns >}}

{{< img name="capture-3-liberties" size="origin" lazy=false >}}

<--->

{{< img name="capture-2-liberties" size="origin" lazy=false >}}

<--->

{{< img name="capture-1-liberties" size="origin" lazy=false >}}

<--->

{{< img name="capture-0-liberties" size="origin" lazy=false >}}

{{< /columns >}}


## Stone groups

If you place stones next to each other so that they are connected through the
lines leading away from the points they occupy, they form a stone group. Stones
that are adjacent to each other diagonally are not connected through lines and
therefore do not form a stone group.

{{< columns >}}

{{< img name="group-connected" size="origin" lazy=false >}}

<--->

{{< img name="group-not-connected" size="origin" lazy=false >}}

{{< /columns >}}

Stones in a group share their liberties. For instance, if you place a stone
somewhere in the middle of the board it initially has 4 liberties. If you now
place another stone on an adjacent point the two form a stone group and
together have 6 liberties.

{{< columns >}}

{{< img name="group-single-stone-liberties" size="origin" lazy=false >}}

<--->

{{< img name="group-shared-liberties" size="origin" lazy=false >}}

{{< /columns >}}

Stones in a group must be captured as a group, i.e. the opponent must surround
the entire group and take away all of its liberties before they can capture it.
If they succeed they capture the entire group and remove all stones from the
board.

{{< img name="group-captured" size="origin" lazy=false >}}

## Suicide rule

It is forbidden to place a stone so that it has no liberties. For instance, it
is forbidden to place a stone on a point that is surrounded on all sides by
enemy stones.

{{< img name="suicide-single-stone" size="origin" lazy=false >}}

By extension, it is also forbidden to place a stone if it connects to a stone
group and the entire stone group would have no liberties left.

{{< img name="suicide-group" size="origin" lazy=false >}}

## Exception to Suicide rule

The exception to the Suicide rule is: You are allowed to place a suicidal stone
if by placing it it takes away the last liberty of one or more enemy stones,
thus making liberties for its own.

{{< img name="suicide-exception" size="origin" lazy=false >}}

## No Repetition (ko) rule

It is forbidden to play a move which repeats a previous board position. This
rule prevents endless repetition in the face of alternating capturing moves due
to the exception to the Suicide rule.

{{< img name="ko" size="origin" lazy=false >}}

Note that if some other moves are played in between, the same play may be
available again as a legal move, because it will not be repeating the same
board position.

This rule is also called the "ko" rule.

## Life

Taking all the above rules into account, it is possible to form stone groups
that are impossible to capture under normal, alternating game play (also
assuming the defending player makes no mistakes). If such a group is formed it
is called "alive". A group that lives usually surrounds two or more separate
areas of empty points. These areas are called "eyes".

{{< img name="life-with-two-eyes" size="origin" lazy=false >}}

The concepts of "life" and "eyes" are not actually rules, they are just a
natural consequence of following the three rules about liberties, suicide and
ko. Nevertheless, it is essential to understand "life" and "eyes" to become
better at playing Go. Playing a few games, making mistakes and learning from
them usually is the best teacher.

# Purpose of the game

The purpose of the game is to occupy or surround more points than the opponent.
When the game ends (both players pass), your score is calculated according to
the scoring system that you and your opponent agreed upon before the game
started.

For area scoring (the default in Little Go), calculate your score as follows:
- First, remove all dead stones from the board (your own, but also those of
  your opponent). Stones are dead if they are not "alive", i.e. if they could be
  captured if you were to continue playing. After removal, calculate your score
  as follows.
- The number of your stones on the board.
- Plus the number of empty points only your stones surround.

Your opponent's score is calculated in the same way, only from his point of
view. Whoever plays white adds komi to his score (komi is usually 7½ and is
given to the white player as a bonus to compensate for the black player's
advantage of first move).

Whoever now has the higher score wins the game.

For territory scoring (the other major scoring system), calculate your score as
follows:
- The number of enemy stones that you captured during the game
- Plus the number of enemy dead stones on the board completely surrounded by
  your stones. See above for a short definition of when stones are dead.
- Plus the number of points completely surrounded by your stones, regardless of
  whether they are empty or occupied by enemy dead stones.
- Komi is usually 6½ for territory scoring

An important note about dead stones: You and your opponent must agree on which
stones are dead! If your opponent does not agree with your judgment, you must
continue the game until the situation in doubt has been settled to both players'
satisfaction. While you are new to the game you often will not see what the
final outcome of a situation in doubt will be, so you will spend a lot of time
in the end game on playouts. This is perfectly OK because you will learn from
the experience. Once you get more experienced, though, less situations will have
to be played out, making the end game less time consuming (and possible less
tedious for your more experienced opponent).

# Etiquette

Some of the pleasure of playing Go (when played against a fellow human) comes
from following certain points of etiquette that have developed over the long
history and tradition of the game. In Little Go, most of the time you will play
against the computer, so there is not much point in going into the details of
this subject. If you are keen on reading more, though, have a look at [this article](https://senseis.xmp.net/?GoEtiquette) on Sensei's Library.
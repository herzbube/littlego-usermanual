---
title: Introduction
weight: 0
---

Little Go lets you play the game of Go on the iPhone or iPad. If you don't know the rules of Go you can find a very short introduction in the [Go rules]({{< relref "../appendix/go-rules" >}}) appendix. For a more thorough approach I recommend visiting one of the many websites dedicated to the game; my personal favourite is [Sensei's Library](https://senseis.xmp.net/).

When you launch the app it displays the same area of the user interface that was last active in your previous session. Usually this is the Play {{< icon "gogrid2x2" >}} area, i.e. the area that shows the Go board. The app also restores the game as it was when you played the last time, so there is no need to manually save the game unless you want to archive it for reviewing it at a later time.

If this is the very first time that you run Little Go, it will start a completely new game with these default settings:

- A 9x9 board
- An even game (i.e. no handicap and a komi of 7½)
- Simple ko rules
- Area scoring
- The game will end after two consecutive pass moves

Also, the game that is started is a human player vs. computer player game. Read the page [Start a new game]({{< relref "../playing-the-game/start-a-new-game" >}}) to find out how you can play with different settings. Notably, you need to start a new game if you want to play on a board with a different size, or if you want to play the game against another human. For the moment, this is possible only in "hot-seat" mode, i.e. by passing the same device between players.

If you are happy with the current settings and just want to play your first game against the computer, you should read the page [How to play]({{< relref "../playing-the-game/how-to-play" >}}). This will provide you with a good overview of what you can do when you see the game board.

The computer player built into Little Go is powered by the open source software library [Fuego](http://fuego.sourceforge.net/). Be warned: Fuego is a tough opponent ☺ on smaller boards, and can also be challenging on larger boards if you tune up its number-crunching power. The page [The Computer Player]({{< relref "../settings/computer-player" >}}) tells you more about how to make Fuego stronger or weaker.

When a game is over you will usually want to know who has won. Little Go is not very smart about calculating a score - it relies quite heavily on your help with evaluating which stones on the board are alive and which ones are dead. The pages [End of the game]({{< relref "../playing-the-game/end-of-the-game" >}}) and [Scoring]({{< relref "../playing-the-game/scoring" >}}) have details about how the life & death settling procedure is supposed to work.

When you save a game it will appear in the archive from where you can load it again at a later time, delete it, export it to another application, or transfer it to your computer. Read the page [The game archive]({{< relref "../game-organization/game-archive" >}}) for more information.

Finally, if you are interested in the way how Little Go and Fuego talk to each other, you should study the technical information page [GTP engine]({{< relref "../technical-pages/gtp" >}}).

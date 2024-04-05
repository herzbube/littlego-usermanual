---
title: How to play
weight: 200
resources:
  - name: place-stone-without-magnifying-glass
    src: "place-stone-without-magnifying-glass.gif"
    title: Placing a stone
  - name: place-stone-with-magnifying-glass
    src: "place-stone-with-magnifying-glass.gif"
    title: Placing a stone, with magnifying glass
---

{{< toc >}}

## Placing a stone

{{< columns size=regular >}}

{{< img name="place-stone-without-magnifying-glass" size="origin" lazy=false >}}

<--->

Once you have [started a new game]({{< relref "start-a-new-game" >}}) you are ready to begin playing.

Start placing a stone by touching the screen near the intersection where you want the stone to end up. The stone appears after a small delay but is not yet placed. Move your finger around the screen until you are satisfied with the stone's location, then place the stone by taking away your finger from the screen. Voilà.

While a gesture to place a stone is ongoing, a blue cross-hair is following the touch location for a better visual indication where the stone would currently be placed. In addition the [Status Text]({{< relref "../ui-basics/play-status-text" >}}) area updates continuously with the coordinates where the stone would currently be placed.

When the new stone hovers over an already existing stone, it is rendered in blue to indicate that the intersection is already occupied.

Finally, when the new stone hovers over an intersection where it is illegal to play, the [Status Text]({{< relref "../ui-basics/play-status-text" >}}) area indicates the reason (e.g. suicide, ko).

{{< /columns >}}

## The magnifying glass

{{< columns size=regular >}}

{{< img name="place-stone-with-magnifying-glass" size="origin" lazy=false >}}

<--->

When board intersections become too small (typically on iPhone devices with smaller screens), a magnifying glass automatically appears to show you the section of the board that is currently under your fingertip. This helps you to place the stone exactly where you want it to be.

A hotspot in the center of the magnifying glass indicates the exact location where your fingertip touches the screen.

You can change various aspects of the magnifying glass' behaviour in the Settings {{< icon "settings" >}} area of the app under "Magnifying Glass". For instance, you can set it to appear only if the intersections on the board are smaller than the average fingertip, or you can turn it off entirely.

{{< /columns >}}

## The computer player

If your opponent is a computer player, it will take over immediately after you have made your move. While the computer player is thinking, an Interrupt {{< icon "interrupt" >}} button is displayed in the toolbar. Usually you will want to wait until the computer has finished thinking and made its move, but if you want you can tap the button to interrupt the computer and force it to play its best move *right now*.

If you want to do something else while the computer is thinking, you can always use the [tab bar]({{< relref "../ui-basics/tab-bar" >}}) at the bottom of the screen to switch to one of the other areas of the user interface. If you would like to get a notification when the computer has made its move you can turn on audio/vibration feedback options in the Settings {{< icon "settings" >}} area of the app under "Sound & Vibration".

You may have noticed that the app has several pre-configured computer players (e.g. "Fuego (weak)", "Fuego (strong)", etc.). [Follow this link]({{< relref "../settings/computer-player" >}}) to learn more about the different playing strengths of computer players.

## Computer vs. computer game

When you start a new game you can select a computer player to play against itself. Because only one collection of computer player settings can be active at a time, it is not possible to select different players for black and white.

In a computer vs. computer game you can't do much more than enjoy watching them battling it out ☺. The Interrupt {{< icon "interrupt" >}} button lets you cut short the current computer player's thinking, forcing it to play the best move it has calculated so far. If you want to interrupt the whole game you have to tap the Pause {{< icon "pause" >}} button. Once the computer player whose turn it currently is has finished its move, the Menu {{< icon "menu-hamburger" >}} button becomes enabled so that you can, for instance, save the game in progress or start a new game. Tap the Continue {{< icon "continue" >}} button to let the players continue their match.

A computer vs. computer game is automatically paused when the device's screen is locked, when you receive a phone call, or whenever some other interruption occurs. Also note that audio/vibration feedback preferences are ignored in a computer vs. computer game because you are merely a spectator and not actively participating in the game.

## Let the computer play for you

If you don't know where to play, or are just lazy ☺, you can let the computer play for you by tapping the Computer Play {{< icon "computer-play" >}} button. Even though the computer is now playing on your behalf, you can interrupt it by tapping the Interrupt {{< icon "interrupt" >}} button. If your opponent is a computer player, that player will immediately take over, just as if you had made your own move.

If you don't like the computer immediately playing a move for you, you can tell it to instead only make a suggestion how to play. You can then follow the suggestion and play the move, or ignore the suggestion and play somewhere else. You find the setting that controls the behaviour in the Settings {{< icon "settings" >}} area of the app under "Computer assistance". If the temptation to consult the computer all the time is too big you can choose to play without computer assistance.

After you've changed the setting you will notice that the Computer Play {{< icon "computer-play" >}} button has been replaced by the Suggest Move {{< icon "computer-suggest-move" >}} button, which displays a different icon. Calculating a move suggestion may take some time and can be interrupted as usual. The app indicates which intersection the computer suggests to play on by blinking a stone a few times to get your attention. If the suggestion is to pass or resign the app displays an alert.

## Making a move for the computer

You can *never* play on behalf of the computer! Whenever there is a situation where it is the computer player's turn and it does not automatically make its move, you will find that the Computer Play {{< icon "computer-play" >}} button is enabled. Tapping the button will tell the computer to make its move.

## Discarding moves

If you are not happy with a move you or your opponent made, you can tap the Discard {{< icon "discard" >}} button (visible only if at least one move was made). This will throw away the move that was just made. Whoever made that move can now play again, either somewhere else on the board or at the same intersection. You can also continue to discard more moves.

**Only in a computer vs. human game and when you're discarding the computer player's move:** Your own last move that precedes the computer player's last move is discarded as well. The goal is that you can then immediately play again and try out a different move. This "double discard" behaviour can be turned off in the Settings {{< icon "settings" >}} area of the app under "Board position > Discard my last move".

When you discard a computer player's move and it is now the computer's turn to play, it does **not** automatically make its move. You can tell it do so by tapping the Computer Play {{< icon "computer-play" >}} button (as mentioned above in the [Making a move for the computer](#making-a-move-for-the-computer) section).

## Game information

Tapping the Game Info {{< icon "game-info" >}} button calls up a screen that shows all sorts of interesting things about the game that is currently in progress. For instance you can see which player's turn it is (on the "Game" segment), but probably the most interesting part is the "Score" segment which has a table that tells you who would win if the game would end right now. Note that you need to activate Scoring {{< icon "scoring" >}} mode if you want the table to display area or territory scores. See the [Scoring]({{< relref "scoring" >}}) manual section for more information.

---
title: Player influence
weight: 200
resources:
  - name: player-influence
    src: "player-influence.jpg"
    title: Player influence on an 11x11 board
---

The goal of the game is to gain control over as much territory on the board as possible. At the beginnng of a game none of the players has yet full control over any territory, but by placing more and more of their stones they start to exert influence over some areas. The app has a feature that, when enabled, tries to estimate both player's influence and displays an indication of that estimate.

Displaying player influence is disabled by default. You can enable it in the Settings {{< icon "settings" >}} area of the app under "Display > Display player influence".

{{< toc >}}

## Example

{{< columns size=regular >}}

When the setting is turned on, most intersections on the board will start to show black and white squares of varying size. The **color** of the square indicates which player has more influence on that intersection, while the **size** of the square indicates the degree of influence that player has (the larger the square the more influence a player has). By looking at the influence squares on the entire board you can quickly estimate which parts of the board will end up being owned by which player.

{{< hint type=important >}}
Player influence is subjective - it is determined by what the computer player "sees" or "thinks". Therefore, if you play against a weak computer player, the player influence being displayed may well be inaccurate, simply because the computer player in its weakness has missed a particularly good move. Even with a strong computer player, you should always take player influence with a grain of salt. [Read more](#technical-background).
{{< /hint >}}

<--->

{{< img name="player-influence" size="origin" lazy=false >}}

{{< /columns >}}

## Automated calculation of player influence

Player influence is not visible immediately after you turn the setting on. The reason for this is that the computer has not yet collected any of the statistics data that it requires to estimate player influence. Player influence will become visible only after the computer player makes its next move (either its own move, or when it plays on your behalf).

Once the initial player influence is visible, it will be updated every time that the computer player makes a move. On the other hand, player influence will <em>never</em> be updated if the computer player does not make a move. The consequence is that you will see outdated/inaccurate player influence in some situations:

- When you play against the computer, player influence is not updated immediately after you make your own move. Player influence is updated only after the computer has finished calculating its answering move.
- When you play against a human opponent, player influence is never updated unless one of you lets the computer make a move on your behalf.
- When you view old board positions, player influence is never updated because the computer never makes calculations while you jump back and forth in the game's move history.

## Manual calculation of player influence

You can <em>force</em> player influence to be re-calculated by selecting the "Update player influence" item from the menu that pops up when you tap the Menu {{< icon "menu-hamburger" >}} button. The calculation will take a while to complete, during that time you will not be able to play.

{{< hint type=note >}}
The menu item is not shown when player influence cannot be re-calculated (e.g. during scoring mode) or, obviously, if the "Display player influence" setting is disabled.
{{< /hint >}}


## Technical background

The computer's method to calculate its best move is to play out a huge amount of hypothetical games in the background, and to evaluate the outcome of each of these playouts. A by-product, so to speak, of each playout is the information whether at the end of the hypothetical game an intersection remains neutral, or belongs to the area owned by black or white.

By summing up the results of all playouts, it is therefore possible to say for any given intersection whether it was owned by black more often than by white, or vice versa, or whether there was a tie. The color of the player who owned an intersection more often determines the **color** of the influence square. The **size** of the influence square is determined by comparing the percentage of playouts won by either black or white.

The accuracy of these playout statistics is governed by how many playout games the computer is allowed to calculate. Few playout games means low accuracy because a particularly strong move and all the playout games descending from it may easily be overlooked. At the same, few playout games also means a weak computer player. In effect, there is a direct relationship between computer player strength and the accuracy of playout statistics / player influence.

Read the [Computer Player]({{< relref "../../settings/computer-player" >}}) section of this manual for more details about how to adjust the computer player's playing strength.

## Influence on computer player strength

The computer player becomes slightly weaker while the display of player influence is enabled. The reason is that collecting the player influence statistics data requires a bit of calculation power that would otherwise be available for calculating the computer's best move.

---
title: Board setup
weight: 100
resources:
  - name: board-setup-with-handicap-stones
    src: "board-setup-with-handicap-stones.svg"
    title: Board setup with handicap stones
---

When you start a new game, instead of beginning to play you can switch to Board Setup {{< icon "board-setup" >}} mode. In this mode you can place black or white stones in any order and combination to set up the initial board before you begin to play moves. The only restriction is that the board position you thus create is legal. In practice this means that the app will not allow you to place stones that create a stone group that has no liberties.

In addition to placing stones, you can select the side which is to play the first move. This overrides the normal game rules which specify that in an even game black plays first, and in a game with handicap white plays first.

{{< toc >}}

## Switching to/from board setup mode

By default the app places you in Play {{< icon "gogrid2x2" >}} mode when you start a new game. To activate Board Setup {{< icon "board-setup" >}} mode you can then select the "Set up board" item from the menu that pops up when you tap the Menu {{< icon "menu-hamburger" >}} button. The idea is that usually you want to play, and setting up a board position is the exception.

You can change this default behaviour in the Settings {{< icon "settings" >}} area of the app under "Board setup > Auto-enable board setup". When you turn on this option the app will automatically activate Board Setup {{< icon "board-setup" >}} mode whenever you start a new game and it is your turn to play first. If it is the computer player's turn to play first it will immediately play a move instead.

While Board Setup {{< icon "board-setup" >}} mode is active you can tap the Play {{< icon "gogrid2x2" >}} button at any time to return to Play {{< icon "gogrid2x2" >}} mode.

{{< hint type=note >}}
As soon as you play a move the "Set up board" item disappears from the menu that pops up when you tap the Menu {{< icon "menu-hamburger" >}} button. The menu item will reappear when you discard all moves, or when you navigate back to board position 0, i.e. the start of the game.
{{< /hint >}}

## Placing stones in board setup mode

In Board Setup {{< icon "board-setup" >}} mode you place a stone by tapping on an empty intersection. A button indicates which color the newly placed stone will have. Besides being an indicator, the button also acts as a toggle: When you tap it, it switches to the opposing color and from now on newly placed stones will have that color.

{{< columns size=regular >}}

The <span class="littlego-icon">{{< icon "stone-black-icon" >}}</span> button indicates that newly placed setup stones will be black. Tapping the button switches the default color for new setup stones from black to white.

<--->

The <span class="littlego-icon">{{< icon "stone-white-icon" >}}</span> button indicates that newly placed setup stones will be white. Tapping the button switches the default color for new setup stones from white to black.

{{< /columns >}}

## Stone color cycles

When you place a stone, then tap again on the same intersection, the stone changes its color. If you tap again on the same intersection, the stone is removed. The cycle then begins again. So, depending on which is the default stone color, you get one of these two cycles:

1. Empty intersection > Black stone > White stone > Empty intersection.
1. Empty intersection > White stone > Black stone > Empty intersection.

The intent is to help you quickly set up board positions without having to toggle between the default stone color all the time.

{{< hint type=note >}}
The app does **not** follow these two cycles if doing so would result in an illegal board position. [Read more](#illegal-board-positions).
{{< /hint >}}

## Board zooming

Hitting the right intersection with a single tap can be difficult if the device is small and the board is large. Unlike when you are in Play {{< icon "gogrid2x2" >}} mode, hitting the wrong intersection during Board Setup {{< icon "board-setup" >}} mode has no consequences - you can remove the stone again by quickly tapping the same intersection two more times.

Usually on iOS devices a double-tap gesture like this is interpreted as a request to zoom in, and when in Play {{< icon "gogrid2x2" >}} mode double-tapping does exactly this: It zooms in the board by 50%. But when in Board Setup {{< icon "board-setup" >}} mode, quickly tapping the same spot has no special meaning because, as explained above, the app wants you to be able to change what is on an intersection by quickly and repeatedly tapping on the intersection.

{{< hint type=note >}}
Zooming is still available via the standard pinch gesture.
{{< /hint >}}

You can restore the double-tap gesture to its normal zoom meaning in the Settings {{< icon "settings" >}} area of the app under "Board setup > Double-tap to zoom".

## Illegal board positions

An illegal board position can occur if placing a stone would create a stone group that has no liberties. [In a previous section](#stone-color-cycles) on this page you have seen that the app follows one of two cycles when you attempt to place a stone. However, if following the cycle would result in an illegal board position, the app breaks the cycle and tries an alternative. If the alternative *still* results in an illegal board position, the app displays an alert with information about what the problem is and why the board situation is illegal.

This feature of trying out alternatives can be very useful when you set up stairs, or other complex board positions consisting of intertwined stone groups. If you don't like the feature you can turn it off in the Settings {{< icon "settings" >}} area of the app under "Board setup > Try not to place illegal stones".

{{< hint type=note >}}
This is how the "magic" alternative-finding works:

1. When you tap on an empty intersection, and placing a stone with the default color would be illegal, the app instead tries to place a stone that is the opposing color of the default color.
1. When you tap on an intersection that is occupied by a stone of the default color, and placing a stone that is the opposing color of the default color would be illegal, the app instead removes the stone.
{{< /hint >}}

## Discarding the board

If you are not happy with the current board setup, you can tap the Discard all Setup Information {{< icon "trashcan" >}} button (visible only if you have placed at least one stone). This will throw away all stones that are currently on the board, with the exception of handicap stones which will remain on the board.

{{< hint type=note >}}
The app displays an alert and asks for confirmation before it actually clears the board.
{{< /hint >}}

## Board setup vs. handicap

{{< columns size=regular >}}

Playing a game with handicap results in a special kind of board setup: Handicap stones. While in Board Setup {{< icon "board-setup" >}} mode handicap stones are displayed with a special mark so that you can distinguish them from regular setup stones.

<--->

{{< img name="board-setup-with-handicap-stones" size="origin" lazy=false >}}

{{< /columns >}}

Handicap stones are treated specially because under area scoring rules handicap has a direct influence on the game's score: White receives compensation for each handicap stone. When you tap a handicap stone the app removes it from the board so that you can place a regular setup stone on the empty intersection. Under area scoring rules the app also reduces the handicap compensation by 1.

The app alerts you when this happens, giving you the opportunity to abort and keep the handicap stone. You can disable the alert in the Settings {{< icon "settings" >}} area of the app under "Board setup > Change handicap alert".

Because handicap is more related to game rules than to board setup, the app currently does not provide a way to place new handicap stones while in Board Setup {{< icon "board-setup" >}} mode. If you accidentally remove a handicap stone you have to start a new game to get it back.

## Setting up a side to play first

Besides placing setup stones, you can also select the side which is to play the first move while in Board Setup {{< icon "board-setup" >}} mode. Select the "Set up a side to play first" item from the menu that pops up when you tap the Menu {{< icon "menu-hamburger" >}} button. This pops up another screen where you can select between the different options.

If you have previously made a choice that overrides the normal game rules, you can select the "Game rules" option to revert back to the normal game rules.

## Board setup vs. game with moves

You can change the board setup only if no moves have been played yet. The reason is simple: Moves build upon each other, and the very first move of the game builds upon the initial board position that exists when the game is started. When you change this initial board position, the first move thus becomes invalid, and with it all future nodes that in turn build upon the first move.

So when you want to change something about the board setup, and one or more moves have already been played, the app will automatically discard all nodes. The app will alert you when this is about to happen, giving you the opportunity to abort and keep those nodes. You can disable the alert in the Settings {{< icon "settings" >}} area of the app under "Board position > Discard future nodes alert".

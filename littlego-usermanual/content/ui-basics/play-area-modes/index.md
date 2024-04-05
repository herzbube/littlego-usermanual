---
title: Modes in the Play area
weight: 500
---

At any given time the Play {{< icon "gogrid2x2" >}} area of the user interface is in a specific state, or mode. The mode that is currently active affects all aspects of the Play {{< icon "gogrid2x2" >}} area user interface:

- The gestures that are available to interact with the board.
- The symbols that are shown on the board.
- The buttons that are shown in [the toolbar]({{< relref "play-toolbar" >}}).
- The entries that appear in [the menu]({{< relref "play-menu" >}}).
- The information that [the status text area]({{< relref "play-status-text" >}}) displays.

## Play mode

When Play {{< icon "gogrid2x2" >}} mode is active the user interface provides interactions geared towards playing the game. You can place a stone or play a pass move, let the computer play a move on your behalf, pause/continue the game in a computer vs. computer game, and so on.

When Play {{< icon "gogrid2x2" >}} mode is **not** active the toolbar always shows a button with the symbol <span class="littlego-icon">{{< icon "gogrid2x2" >}}</span> to let you return to Play mode with a single tap.

## Scoring mode

When Scoring {{< icon "scoring" >}} mode is active the user interface provides interactions that let you determine the game score. Notably you can mark dead stones and stones that are in *seki*, and the intersections on the board are marked with black and white overlays to show which side's territory they belong to.

The app automatically activates Scoring {{< icon "scoring" >}} mode when the game ends and you did not turn off automatic activation in the settings.

You can manually activate Scoring {{< icon "scoring" >}} mode at any time either via menu action or via a toolbar button with the symbol <span class="littlego-icon">{{< icon "scoring" >}}</span>.

{{< hint type=note >}}
The toolbar button is shown only in a few circumstances and only when Play {{< icon "gogrid2x2" >}} mode is active, so usually you have to go through the menu to activate Scoring {{< icon "scoring" >}} mode.
{{< /hint >}}

## Board setup mode

When Board setup {{< icon "board-setup" >}} mode is active the user interface provides interactions that let you place or remove stones without playing moves, in order to set up a desired board position. 

By default the app activates Play {{< icon "gogrid2x2" >}} mode when you start a new game. You can then activate Board setup {{< icon "board-setup" >}} mode via a menu action. If you prefer you can turn on a setting that causes the app to automatically switch to Board setup {{< icon "board-setup" >}} mode when you start a new game.

{{< hint type=note >}}
There is currently no toolbar button for activating Board setup {{< icon "board-setup" >}} mode - you always have to go through the menu.
{{< /hint >}}

## Markup editing mode

When Markup editing {{< icon "markup" >}} mode is active the user interface provides interactions that let you place or remove various types of graphical elements - summarily called "markup" - on the board. Some markup examples are squares, triangles, arrows, or number and letter markers.

You can manually activate Markup editing {{< icon "markup" >}} mode at any time via a menu action.

{{< hint type=note >}}
There is currently no toolbar button for activating Markup editing {{< icon "markup" >}} mode - you always have to go through the menu.
{{< /hint >}}

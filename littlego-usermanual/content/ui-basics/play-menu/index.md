---
title: Menu in the Play area
weight: 300
resources:
  - name: play-menu
    src: "play-menu.jpg"
    title: Menu Play area (iPhone)
---

In the Play {{< icon "gogrid2x2" >}} area when you tap the Menu {{< icon "menu-hamburger" >}} button a menu will pop up that looks similar to the following screenshot:

{{< columns size=small >}}

{{< img name="play-menu" size="origin" lazy=false >}}

<--->

Menu items are actions for which there is no toolbar button. The mode that is currently active in the Play {{< icon "gogrid2x2" >}} area affects which items the menu shows. See [this page]({{< relref "play-area-modes" >}}) for more information on Play {{< icon "gogrid2x2" >}} area modes.

In the next section you find a reference of all the items that can appear in the menu, when they appear, and what they do.

{{< hint type=note >}}
The "Cancel" menu item only appears on iPhone devices and is used to dismiss the menu. On iPad devices you can tap anywhere outside of the popup menu's area to dismiss the menu.
{{< /hint >}}

{{< /columns >}}

## Menu item reference

### Static menu items

The following menu items are always shown, regardless of which mode is currently active in the Play {{< icon "gogrid2x2" >}} area.

| Name | Description |
| ---  | ----------- |
| Save game | Select this item to save a snapshot of the game that is currently in progress. |
| New game | Select this item to start a new game. Before the game starts you can choose various parameters of the new game, such as the board size, the amount of komi, and so on. |
| New game - Rematch | Select this item to immediately start a new game that will use the same parameters as the game that is currently in progress. This is a convenient shortcut that skips the screen where you have to select the parameters of a new game. |


### Mode activation

The following menu items are used to activate a specific Play {{< icon "gogrid2x2" >}} area mode.

| Name | Description |
| ---  | ----------- |
| Set up board | Select this item to actvate Board setup {{< icon "board-setup" >}} mode. The menu item is shown only when you are viewing the board position at the start of the game (aka the root node). |
| Score | Select this item to actvate Scoring {{< icon "scoring" >}} mode. The menu item is not shown if the game has already ended - in that case the toolbar shows the Scoring Mode {{< icon "scoring" >}} button instead of the menu item to allow quicker access to the mode. |
| Edit markup | Select this item to activate Markup editing {{< icon "markup" >}} mode. |

{{< hint type=note >}}
The menu never shows an item to activate Play {{< icon "gogrid2x2" >}} mode. Because this is the most-used mode quick access to it is always provided by a toolbar button.
{{< /hint >}}

### Play mode

The following menu items are shown only when Play {{< icon "gogrid2x2" >}} mode is active.

| Name | Description |
| ---  | ----------- |
| Update player influence | Select this item to force a re-calculation of the player influence indicators. The menu item is shown only if the "Display player influence" setting is enabled. |
| Resign | Select this item to resign and end the game. The menu item is shown only 1) if the game has not yet ended, and 2) if the side to play next is not a computer player (i.e. you cannot resign on behalf of the computer player), and 3) if the board displays a board position after the last move was played. |
| Undo resign | Select this item to resume play after a game has ended by resignation. The menu item is shown only 1) if the game has ended by resignation, and 2) if the board displays a board position after the last move was played. |
| Resume play | Select this item to resume play after a game has ended by 2 pass moves. The menu item is shown only 1) if the game has ended by 2 pass moves, and 2) if the board displays a board position after the last move was played. |
| Set black to move | Select this item to switch the side to play next from white to black. The menu item is shown only 1) if the game has just been resumed after it ended due to two pass moves, and 2) if the "Dispute resolution" game rule is set to "Non-alternating play", and 3) if white is to play next. |
| Set white to move | Select this item to switch the side to play next from black to white. The menu item is shown only 1) if the game has just been resumed after it ended due to two pass moves, and 2) if the "Dispute resolution" game rule is set to "Non-alternating play", and 3) if black is to play next. |
| Undo timeout | Select this item to resume play after a game has ended by one side running out of time in a game with timed play. The menu item is shown only 1) if the game has ended by one side running out of time, and 2) if the board displays a board position after the last move was played. **Note:** The app does not support timed play, so this menu item can appear only when you load an SGF file that stores a game that ended by one side running out of time. |
| Undo forfeit | Select this item to resume play after a game has ended by one side forfeit the game. The menu item is shown only 1) if the game has ended by one side forfeiting the game, and 2) if the board displays a board position after the last move was played. **Note:** The app does not support forfeiting a game, so this menu item can appear only when you load an SGF file that stores a game that ended by one side forfeiting the game. |

### Scoring mode

The following menu items are shown only when Scoring {{< icon "scoring" >}} mode is active.

| Name | Description |
| ---  | ----------- |
| Start marking as seki | Select this item to start marking stones as "in seki". The menu item is shown only 1) if marking stones currently marks them as dead, and 2) if the game has not ended due to 4 pass moves while the "Four passes" game rule is set to "End game". |
| Start marking as dead | Select this item to start marking stones as dead stones. The menu item is shown only if marking stones currently marks them as "in seki", and 2) if the game has not ended due to 4 pass moves while the "Four passes" game rule is set to "End game". |


### Board setup mode

The following menu items are shown only when Board setup {{< icon "board-setup" >}} mode is active.

| Name | Description |
| ---  | ----------- |
| Set up a side to play first | Select this item to choose a side which is to play first. You can choose black or white to override the normal game rules, or you can revert to the normal game rules determining the side to play first. |

  

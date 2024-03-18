---
title: Toolbar in the Play area
weight: 200
resources:
  - name: play-toolbar-portrait
    src: "play-toolbar-portrait.svg"
    title: Toolbar Play area, portrait orientation
  - name: play-toolbar-landscape
    src: "play-toolbar-landscape.svg"
    title: Toolbar Play area, landscape orientation
---

The Play {{< icon "gogrid2x2" >}} user interface area displays a toolbar with buttons that perform various actions. An overview of the general toolbar organization is given in the next section, while the section after that provides a reference of all the buttons that can appear in the toolbar, and what they do.

{{< toc >}}

## Toolbar organization

This is how the Play {{< icon "gogrid2x2" >}} area toolbar looks like on an iPhone when you hold the device in portrait orientation. On the iPad the toolbar is wider but in general has the same content.

{{< img name="play-toolbar-portrait" size="origin" lazy=false >}}

The toolbar has 3 areas:

1. The left area of the toolbar shows a varying set of buttons. Which buttons are shown mainly depends on the mode that is currently active in the Play {{< icon "gogrid2x2" >}} area is in (e.g. Play {{< icon "gogrid2x2" >}} mode, Scoring {{< icon "scoring" >}} mode, etc.).
1. At the toolbar center there is the [Status Text area]({{< relref "../play-status-text" >}}) that shows context information about the activity that is going on at the moment. Some examples are: The current status of the ongoing game, the next action you can take, a summary score, etc.
1. The right area of the toolbar is fixed and always shows the same two buttons: One to call up the [Game Info screen]({{< relref "../../other-features/game-info-screen" >}}), the other to call up the [Play menu]({{< relref "../play-menu" >}}).

---

{{< columns size=regular >}}

When you hold the device in landscape orientation the user interface does not show a toolbar at the top of the screen. Instead the user interface shows the toolbar *content* in the following places:

- The buttons in the toolbar's left (①) and right (③) areas are shown in a button box at the bottom-right corner of the screen, as is depicted in the next image.
- The Status Text is displayed in the upper-left corner of the screen (not shown here).

{{< hint type=note >}}
The reason for the different landscape layout is that in landscape orientation there is not a lot of vertical screen space, so the space that *is* available is put to better use by drawing the Go board slightly larger.
{{< /hint >}}

<--->

{{< img name="play-toolbar-landscape" size="origin" lazy=false >}}

{{< /columns >}}


## Button reference

### Right toolbar area

| Icon | Name | Description |
| ---  | ---- | ----------- |
| <span class="littlego-icon">{{< icon "game-info" >}}</span> | Game Info | The button calls up the [Game Info screen]({{< relref "../../other-features/game-info-screen" >}}). |
| <span class="littlego-icon">{{< icon "menu-hamburger" >}}</span> | Menu | The button calls up the [Play menu]({{< relref "../play-menu" >}}). |

### Play mode

The following buttons can appear in the left toolbar area while [Play {{< icon "gogrid2x2" >}} mode]({{< relref "../play-area-modes" >}}) is active in the Play {{< icon "gogrid2x2" >}} area.

| Icon | Name | Description |
| ---  | ---- | ----------- |
| <span class="littlego-icon">{{< icon "pass" >}}</span> | Pass | Tapping this button plays a pass move. |
| <span class="littlego-icon">{{< icon "computer-play" >}}</span> | Computer Play | Tapping this button lets the computer play a move on behalf of the current player. |
| <span class="littlego-icon">{{< icon "computer-suggest-move" >}}</span> | Suggest Move | Tapping this button lets the computer make a suggestion how to play. Unlike the Computer Play {{< icon "computer-play" >}} button, which immediately plays a move, it is up to you whether you want to actually play the suggested move, or ignore the suggestion. This button replaces the Computer Play {{< icon "computer-play" >}} button if the "Computer assistance" preference is set to "Suggest move". |
| <span class="littlego-icon">{{< icon "discard" >}}</span> | Discard Node | Discards the most recent node (typically a move) that led to the board position that you are currently viewing. |
| <span class="littlego-icon">{{< icon "pause" >}}</span> | Pause | This button is only shown in a computer vs. computer game. Tapping the button lets the computer player whose turn it is finish the move, then pauses the game. |
| <span class="littlego-icon">{{< icon "continue" >}}</span> | Continue | This button is only shown in a computer vs. computer game, when the game is paused. Tapping the button lets the computer players continue with the paused game. |
| <span class="littlego-icon">{{< icon "interrupt" >}}</span> | Interrupt | This button is shown whenever the computer player is calculating something, e.g. when it is thinking about its own move or when it tries to come up with a move suggestion for you. Tapping the button cuts short the computer player's thinking, forcing it to play or suggest the best move it has calculated so far. |
| <span class="littlego-icon">{{< icon "scoring" >}}</span> | Scoring Mode | Tapping this button activates Scoring {{< icon "scoring" >}} mode. The button is shown only if the game has ended **and** the Play {{< icon "gogrid2x2" >}} area is in Play {{< icon "gogrid2x2" >}} mode. |

### Scoring mode

The following buttons can appear in the left toolbar area while [Scoring {{< icon "scoring" >}} mode]({{< relref "../play-area-modes" >}}) is active in the Play {{< icon "gogrid2x2" >}} area.

| Icon | Name | Description |
| ---  | ---- | ----------- |
| <span class="littlego-icon">{{< icon "gogrid2x2" >}}</span> | Play Mode | Tapping this button leaves Scoring {{< icon "scoring" >}} mode and instead activates Play {{< icon "gogrid2x2" >}} mode. |
| <span class="littlego-icon">{{< icon "discard" >}}</span> | Discard Node | Discards the most recent node (typically a move) that led to the board position that you are currently viewing. |

### Board setup mode

The following buttons can appear in the left toolbar area while [Board setup {{< icon "board-setup" >}} mode]({{< relref "../play-area-modes" >}}) is active in the Play {{< icon "gogrid2x2" >}} area.

| Icon | Name | Description |
| ---  | ---- | ----------- |
| <span class="littlego-icon">{{< icon "stone-black-icon" >}}</span> | Switch Setup Stone Color to White | This button is displayed when the default color for new setup stones is currently black. Tapping the button switches the default color for new setup stones from black to white. |
| <span class="littlego-icon">{{< icon "stone-white-icon" >}}</span> | Switch Setup Stone Color to Black | This button is displayed when the default color for new setup stones is currently black. Tapping the button switches the default color for new setup stones from black to white. |
| <span class="littlego-icon">{{< icon "trashcan" >}}</span> | Discard all Setup Information | This button is displayed only if there is at least one piece of setup information present (at least one setup stone is on the board, or a side to play first has been set up). Tapping the button discards all setup information. |
| <span class="littlego-icon">{{< icon "gogrid2x2" >}}</span> | Play Mode | Tapping this button leaves Board setup {{< icon "board-setup" >}} mode and instead activates Play {{< icon "gogrid2x2" >}} mode. |

### Markup editing mode

The following buttons can appear in the left toolbar area while [Markup editing {{< icon "markup" >}} mode]({{< relref "../play-area-modes" >}}) is active in the Play {{< icon "gogrid2x2" >}} area.

| Icon | Name | Description |
| ---  | ---- | ----------- |
| Variable | Select Markup Type | Tapping this button pops up a menu that lets you choose what kind of markup you want to place from now on when you interact with the board. The icon used for the button is variable and reflects which markup type is currently selected. See the table below for details. |
| <span class="littlego-icon">{{< icon "trashcan" >}}</span> | Discard all Markup | This button is displayed only if there is at least one piece of markup present in the current node. Tapping the button discards all markup. |
| <span class="littlego-icon">{{< icon "gogrid2x2" >}}</span> | Play Mode | Tapping this button leaves Markup editing {{< icon "markup" >}} mode and instead activates Play {{< icon "gogrid2x2" >}} mode. |

These are the markup types that you can choose from when you tap the Select Markup Type button:

| Icon | Name | Description |
| ---  | ---- | ----------- |
| <span class="littlego-icon">{{< icon "circle" >}}</span> | Circle Symbol | Places a Circle symbol on the board. |
| <span class="littlego-icon">{{< icon "square" >}}</span> | Square Symbol | Places a Square symbol on the board. |
| <span class="littlego-icon">{{< icon "triangle" >}}</span> | Triangle Symbol | Places a Triangle symbol on the board. |
| <span class="littlego-icon">{{< icon "cross-mark" >}}</span> | X Symbol | Places an "X" symbol on the board ("X marks the spot"). |
| <span class="littlego-icon">{{< icon "check-mark" >}}</span> | Checkmark Symbol | Places a "Selected" symbol on the board. The style used for rendering the symbol is a checkmark. Which style is currently used for rendering the "Selected" symbols is a user preference. |
| <span class="littlego-icon">{{< icon "dot-symbol" >}}</span> | Dot Symbol | Places a "Selected" symbol on the board. The style used for rendering the symbol is a dot. Which style is currently used for rendering the "Selected" symbols is a user preference. |
| <span class="littlego-icon">{{< icon "number-marker" >}}</span> | Number Marker | Places a single-digit number marker on the board. |
| <span class="littlego-icon">{{< icon "letter-marker" >}}</span> | Letter Marker | Places a letter marker on the board. Letters used are in the ranges a-z and A-Z. |
| <span class="littlego-icon">{{< icon "label" >}}</span> | Label | Places a text label on the board. |
| <span class="littlego-icon">{{< icon "line" >}}</span> | Line | Places a line between two intersections on the board. |
| <span class="littlego-icon">{{< icon "arrow" >}}</span> | Arrow | Places a line between two intersections on the board. The line is rendered with an arrow head to indicate the direction. |
| <span class="littlego-icon">{{< icon "discard" >}}</span> | Eraser | Deletes markup on a single interaction, or on all intersections within a rectangular area. |

---
title: Game board extras
weight: 300
resources:
  - name: game-board-without-coordinates
    src: "game-board-without-coordinates.jpg"
    title: Game board without coordinates
  - name: game-board-with-coordinates
    src: "game-board-with-coordinates.jpg"
    title: Game board with coordinates
  - name: game-board-with-move-numbers
    src: "game-board-with-move-numbers.jpg"
    title: Game board with move numbers
---

{{< toc >}}

## Coordinates

By default the app does not display any game board coordinates, because these consume precious screen estate that could otherwise be used for drawing a slightly larger game board. This becomes especially important when you play on a large board on a device with a smaller screen.

You can enable coordinate labels in the Settings {{< icon "settings" >}} area of the app under "Display > Display coordinates".

{{< hint type=note >}}
The app automatically calculates the font size that is required to display coordinate labels. The font size depends on the board size (a bigger board means a smaller font) and the amount of space available for drawing the board (a smaller screen means a smaller font).

If as a result of these calculations the font becomes too small, you will no longer be able to read coordinate labels. The app in this case decides that it is better to not display the labels at all, and to use the space thus gained for drawing a board that is slightly larger.

To still see coordinate labels you have to zoom the board sufficiently.
{{< /hint >}}

{{< columns size=regular >}}

{{< img name="game-board-without-coordinates" size="origin" lazy=false >}}

<--->

{{< img name="game-board-with-coordinates" size="origin" lazy=false >}}

{{< /columns >}}

## Move numbers

{{< columns size=regular >}}

In the Settings {{< icon "settings" >}} area of the app under "Display > Display move numbers" you can enable the display of move numbers.

Move numbers are drawn on top of stones, to indicate in which move a stone was placed on the board.

The setting is a slider with which you can adjust whether you want fewer or more move numbers to be shown. In the left-most slider position no move numbers are shown, in the right-most slider position all move numbers are shown.

When at least one move number is displayed the [Last move marker]({{< relref "../../game-organization/current-game-variation.html#last-move-marker-and-next-move-marker" >}}) is not shown because it would conflict with the move number label. Instead of the marker the move number that replaces the marker is rendered in red color (move number 43 in the illustration).

<--->

{{< img name="game-board-with-move-numbers" size="origin" lazy=false >}}

{{< /columns >}}

{{< hint type=note >}}
The app automatically calculates the font size that is required to display move number labels. The font size depends on the board size (a bigger board means a smaller font) and the amount of space available for drawing the board (a smaller screen means a smaller font).

If as a result of these calculations the font becomes too small, you will no longer be able to read move number labels. The app in this case decides that it is better to not display the labels at all, and to use the space thus gained for drawing a board that is slightly larger.

To still see move number labels you have to zoom the board sufficiently.
{{< /hint >}}

## Notification when computer makes a move

In the Settings {{< icon "settings" >}} area of the app under "Sound & Vibration" you can enable audio and/or vibration notifications when the computer has finished making a move.

{{< hint type=note >}}
Enabling the "Vibrate" setting has no effect if your device does not support vibration (e.g. an iPad).
{{< /hint >}}

Enabling the notification settings can be useful if you are playing against a strong computer player which takes a long time to calculate its moves. When the settings are enabled you can do something else while waiting for the computer. Your attention will then be called back to the game when it is again your turn to play.
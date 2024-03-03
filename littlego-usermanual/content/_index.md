---
title: 'Little Go User Manual'
resources:
  - name: first-launch-iphone-portrait
    src: "first-launch-iphone-portrait.svg"
    title: iPhone user interface after first launch
---

Little Go is an iOS application that lets you play the game of Go on the iPhone or iPad. This is the user manual for Little Go.

Use the main menu on the left to navigate through the app features in a structured way. As an alternative you find below the screen you see when you launch the app for the first time, annotated with some links you can follow to get a quick overview.

{{< hint type=note >}}
Because the iPhone and iPad user interfaces are very similar, or even identical, illustrations in this user guide will usually show only the iPhone user interface because it is more compact.
{{< /hint >}}

{{< columns size=regular >}}

{{< img name="first-launch-iphone-portrait" size="large" lazy=false >}}

<--->

### Areas of the user interface

1. A toolbar with several buttons and an informative status text in the center. The buttons shown on the left frequently change depending on the current context. Follow [this link]({{< relref "ui-basics/play-toolbar" >}}) to see a list of all buttons that can appear.
1. The status text in the toolbar centre shows context-related information such as whose turn it is to play. [Read more]({{< relref "ui-basics/play-status-text" >}}).
1. This button calls up a screen with information about the current game, such as the rules that are currently in force. [Read more]({{< relref "other-features/game-info-screen" >}}).
1. This button calls up a menu with additional actions, of which the most important one probably is the action to start a new game. Follow [this link]({{< relref "ui-basics/play-menu" >}}) to see a list of all actions that can appear in the menu.
1. The Go board. Because no moves have been played yet it does not show any stones. Follow [this link]({{< relref "playing-the-game/how-to-play" >}}) for instructions how to place a stone and play the game. [This page]({{< relref "playing-the-game/start-a-new-game" >}}) explains how to change the board size.
1. A few buttons for navigating back and forth between the nodes of the current game variation. Because no moves have been played yet all buttons are disabled. [Read more]({{< relref "game-organization/current-game-variation" >}}).
1. A box with controls for annotating the currently selected node. [Read more]({{< relref "game-editing/annotations" >}}).
1. The list of nodes of the currently selected game variation. Because no moves have been played yet there is only a single node: The root node which represents the start of the game. [Read more]({{< relref "game-organization/current-game-variation" >}}).
1. A tree view that shows all nodes of all game variations of the currently loaded game. Because no moves have been played yet there is only the root node of the tree. [Read more]({{< relref "game-organization/game-variations" >}}).
1. A tab bar which lets you switch between different areas of the app. The currently selected area where the Go board is located is the Play {{< icon "gogrid2x2" >}} area. [Read more]({{< relref "ui-basics/tab-bar" >}}).

{{< /columns >}}

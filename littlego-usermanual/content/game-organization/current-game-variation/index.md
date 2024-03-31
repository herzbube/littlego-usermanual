---
title: The current game variation
weight: 200
resources:
  - name: current-game-variation-node-list-ipad
    src: "current-game-variation-node-list-ipad.jpg"
    title: List of nodes and their content (iPad)
  - name: current-game-variation-node-list-horizontal-iphone
    src: "current-game-variation-node-list-horizontal-iphone.jpg"
    title: List of nodes and their content (iPhone)
  - name: current-game-variation-node-list-vertical-iphone
    src: "current-game-variation-node-list-vertical-iphone.jpg"
    title: List of nodes and their content (vertical)
  - name: current-game-variation-node-list-entry-game-start
    src: "current-game-variation-node-list-entry-game-start.jpg"
    title: Node list view entry for the root node
  - name: current-game-variation-node-list-entry-move
    src: "current-game-variation-node-list-entry-move.jpg"
    title: Node list view entry for a node that contains a move
  - name: current-game-variation-node-list-entry-setup
    src: "current-game-variation-node-list-entry-setup.jpg"
    title: Node list view entry for a node that contains setup
  - name: current-game-variation-node-list-entry-empty
    src: "current-game-variation-node-list-entry-empty.jpg"
    title: Node list view entry for an empty node, i.e. a node that contains no move and no setup
  - name: current-game-variation-navigation-buttons
    src: "current-game-variation-navigation-buttons.jpg"
    title: Buttons for navigating within the current game variation
  - name: last-next-move-markers
    src: "last-next-move-markers.jpg"
    title: Last move marker and next move marker
---

The tree view indicates the currently selected game variation with a red path going through all the lines that connect the variation's nodes.

{{< hint type=note >}}
Read the [Game variations]({{< relref "../game-variations" >}}) page to learn more about the tree view and game variations in general.
{{< /hint >}}

Besides the tree view, the app's user interface provides additiional elements to view the content of and interact with the current game variation. These UI elements are the topic of this page.

{{< toc >}}

## Node list view

{{< hint type=tip title="Definition" >}}
Game variation: A sequence of nodes, starting at the root node and ending at a leaf node.

(definition from the [Glossary]({{< relref "../game-variations#glossary" >}}) section of the [Game variations]({{< relref "../game-variations" >}}) page).
{{< /hint >}}

{{< columns size=regular >}}

The app provides a view that lists the sequence of nodes that make up the current game variation.

When there are many nodes you can use the usual swipe gesture to scroll through the nodes in the node list view.

One smaller devices the node list view cannot show as many elements.

Position and orientation of the node list view vary depending on how you hold the device:

- Portrait orientation: The list view is located in the screen area between the game board and the tree view. The list view is horizontally oriented and you scroll through it with left/right swipe gestures.
- Landscape orientation: The list view is located at the left edge of the screen. The list view is vertically oriented and you scroll through it with up/down swipe gestures.

<--->

{{< img name="current-game-variation-node-list-ipad" size="origin" lazy=false >}}

{{< img name="current-game-variation-node-list-horizontal-iphone" size="origin" lazy=false >}}

{{< img name="current-game-variation-node-list-vertical-iphone" size="origin" lazy=false >}}

{{< /columns >}}

## The current node

The node list view entry that represents the currently selected node is shown with an orange background color.

You can tap on a node list view entry to make the node represented by that entry the current node.

## Node list view entries

Each entry in the node list view represents a node. The entry displays details about the node it represents.

The following examples illustrate the four main types of node list entries:

- The root node.
- Nodes that contain a move.
- Nodes that contain setup.
- Empty nodes, i.e. nodes that contain neither a move nor setup.

{{< columns size=regular >}}

{{< img name="current-game-variation-node-list-entry-game-start" size="origin" lazy=false >}}

<--->

{{< img name="current-game-variation-node-list-entry-move" size="origin" lazy=false >}}

{{< /columns >}}

{{< columns size=regular >}}

{{< img name="current-game-variation-node-list-entry-setup" size="origin" lazy=false >}}

<--->

{{< img name="current-game-variation-node-list-entry-empty" size="origin" lazy=false >}}

{{< /columns >}}

The following table explains the meaning of each element that can appear in a node list view entry.

| Element | Descripton |
| ---  | --- |
| Symbol | A symbol on the left of the entry shows at a glance the main content of the node. Node list view entries use the same symbols as the tree view. [Follow this link]({{< relref "../game-variations#node-symbol-and-content" >}}) to see the list of all possible node symbols. |
| Main content description | A text that describes the main content of the node is shown in a large font next to the symbol. For move nodes this shows the intersection where a stone was placed ("A1" in the example illustration), or "Pass" if the move was a pass move. For non-move nodes this shows a static text: "Game start" for the root node, "Setup" for nodes containing setup, and "Empty" for nodes that contain neither a move nor setup. |
| Detail content description | A text that describes the content of the node in more detail is shown in a smaller font below the main content description. For the root node this shows the handicap and komi values ("H: 3, K:½" in the example illustration, indicating handicap 3 and komi ½). For move nodes this shows the move number ("Move 68" in the example illustration). For setup and empty nodes no detail text is displayed. |
| Number of captured stones | For move nodes the number of stones captured by that move is shown in red color next to the main content description ("16" in the example illustration). Nothing is shown if the move did not capture any stones, or if the node does not contain a move. |
| {{< icon "about" >}} | An icon that indicates that the node contains annotations. Due to space constraints the icon is not shown for the root node even if the root node contains annotations. |
| {{< icon "hotspot" >}} or {{< icon "hotspot-intense" >}} | An icon that indicates that the node is designated as a hotspot. Due to space constraints the icon is not shown for the root node even if the root node is designated as a hotspot. |
| {{< icon "markup" >}} | An icon that indicates that the node contains markup. Due to space constraints the icon is not shown for the root node even if the root node contains markup. |

## Quick navigation

One way to navigate through the nodes of the current game variation is to scroll the tree view or the node list view, then tap a node to select it.

{{< columns size=regular >}}

The second way is to make use of the set of navigation buttons that are shown by the user interface in a box near the node list view.

These buttons jump back and forth in the current game variation with a single tap, which can sometimes be a lot faster than scrolling.

<--->

{{< img name="current-game-variation-navigation-buttons" size="origin" lazy=false >}}

{{< /columns >}}

Button reference:

| Icon | Name | Description |
| ---  | ---- | ----------- |
| <span class="littlego-icon">{{< icon "back" >}}</span> | Go Back | Tapping this button goes forward one step and selects the next node in the current game variation. |
| <span class="littlego-icon">{{< icon "forward" >}}</span> | Go Forward | Tapping this button goes back one step and selects the previous node in the current game variation. |
| <span class="littlego-icon">{{< icon "rewindtostart" >}}</span> | Go to Start | Tapping this button jumps to the start and selects the first node in the current game variation. This is always the root node. |
| <span class="littlego-icon">{{< icon "forwardtoend" >}}</span> | Go to End | Tapping this button jumps to the end and selects the last node in the current game variation. |

## Last move marker and Next move marker

{{< columns size=regular >}}

While navigating through the nodes of the current game variation, the game board displays two markers:

- Last move marker: A red square marking the stone that was placed by the move in the currently selected node. If the currently selected node contains a pass move, or no move at all, then the last move marker is not shown.
- Next move marker: The letter "A" marking the intersection where a stone will be placed by the move in the next node after the currently selected node. If the node after the currently selected node contains a pass move, or no move at all, then the next move marker is not shown.

<--->

{{< img name="last-next-move-markers" size="origin" lazy=false >}}

{{< /columns >}}

These two markers are intended to help with following the focus of play on the board when you navigate through a sequence of moves one by one. They also help with quickly finding the focus of play when you jump to arbitrary nodes.

You can disable the markers in the Settings {{< icon "settings" >}} area of the app under "Display > Mark last move" and "Board position > Mark next move", respectively.

{{< hint type=note >}}
If the current node contains markup that happens to be located on the intersections that would be occupied by the last/next move markers, that markup takes precedence over the last/next markers. The reason is that explicitly placed markup should always be more important than implicit markup generated by the app.
{{< /hint >}}

## Behaviour that depends on the selected node

Certain features of the app behave differently depending on whether the currently selected node is the last node in the current game variation, or a node before the last node.

### Discarding nodes

The general behaviour of the Discard {{< icon "discard" >}} button is described on the [How to play]({{< relref "../../playing-the-game/how-to-play#discarding-moves" >}}) page.

A new behaviour is that when the currently selected node is **not** the last node of the current game variation, the app also has to discard future nodes that come **after** the currently selected node.

The app in that case displays an alert, giving you the opportunity to abort and keep those future nodes.

Although it is not recommended, you can disable the alert in the Settings {{< icon "settings" >}} area of the app under "Board position > Discard future nodes alert".

### Playing a move

The general behaviour of playing moves is described in detail on the [How to play]({{< relref "../../playing-the-game/how-to-play" >}}) page.

A new behaviour is that when the currently selected node is **not** the last node of the current game variation, the app has to decide whether or not to discard future nodes that come **after** the currently selected node.

By default the app will not discard future nodes, instead it will create a new game variation as described on the [Game variations]({{< relref "../game-variations#how-to-create-a-game-variation" >}}) page.

However, if you have disabled the corresponding setting in the Settings {{< icon "settings" >}} user interface area under "Game variations > Move creates new game variation when future nodes exist", then the app will discard future nodes.

As with [discarding nodes](#discarding-nodes), the app in that case displays an alert, giving you the opportunity to abort and keep those future nodes.

{{< hint type=note >}}
The behaviour of playing a move is identical regardless of whether you play the move or the computer plays the move for itself or on your behalf.
{{< /hint >}}

### Scoring

When you look at the score in the [Game Info]({{< relref "../../other-features/game-info-screen" >}}) screen, it is always based on the currently selected node.

When you are in Scoring {{< icon "scoring" >}} mode and you navigate to a different node, the scoring information shown in the [Status Text]({{< relref "../../ui-basics/play-status-text" >}}) area is updated automatically to reflect the board position represented by the newly selected node. At the same time, any decisions that you made on which stones are dead or in seki are forgotten.

See the [Scoring]({{< relref "../../playing-the-game/scoring" >}}) page if you need more information about scoring.


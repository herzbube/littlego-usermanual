---
title: Game variations
weight: 100
resources:
  - name: game-tree-without-variations
    src: "game-tree-without-variations.jpg"
    title: Game tree without variations
  - name: game-tree-with-variations
    src: "game-tree-with-variations.jpg"
    title: Game tree with variations
  - name: glossary-annotations
    src: "glossary-annotations.svg"
    title: Glossary annotations
  - name: resize-tree-view
    src: "resize-tree-view.svg"
    title: Drag handle to resize
  - name: resize-tree-view-animation
    src: "resize-tree-view-animation.mp4"
    title: Resize animation
  - name: branching-style-diagonal
    src: "branching-style-diagonal.jpg"
    title: Diagonal branching style
  - name: branching-style-right-angle
    src: "branching-style-right-angle.jpg"
    title: Right-angle branching style
  - name: node-numbers
    src: "node-numbers.jpg"
    title: Node numbers
  - name: node-selection
    src: "node-selection.jpg"
    title: Current game variation and current node
  - name: node-selection-light-circular
    src: "node-selection-light-circular.jpg"
    title: Node selection style "Light & circular" (the default style)
  - name: node-selection-heavy-circular
    src: "node-selection-heavy-circular.jpg"
    title: Node selection style "Heavy & circular"
  - name: node-selection-heavy-rectangular
    src: "node-selection-heavy-rectangular.jpg"
    title: Node selection style "Heavy & rectangular"
  - name: node-symbol-komi
    src: "node-symbol-komi.jpg"
    title:
  - name: node-symbol-handicap
    src: "node-symbol-handicap.jpg"
    title:
  - name: node-symbol-handicap-komi
    src: "node-symbol-handicap-komi.jpg"
    title:
  - name: node-symbol-root
    src: "node-symbol-root.jpg"
    title:
  - name: node-symbol-setup-black
    src: "node-symbol-setup-black.jpg"
    title:
  - name: node-symbol-setup-white
    src: "node-symbol-setup-white.jpg"
    title:
  - name: node-symbol-setup-clear
    src: "node-symbol-setup-clear.jpg"
    title:
  - name: node-symbol-setup-black-white
    src: "node-symbol-setup-black-white.jpg"
    title:
  - name: node-symbol-setup-black-clear
    src: "node-symbol-setup-black-clear.jpg"
    title:
  - name: node-symbol-setup-white-clear
    src: "node-symbol-setup-white-clear.jpg"
    title:
  - name: node-symbol-setup-black-white-clear
    src: "node-symbol-setup-black-white-clear.jpg"
    title:
  - name: node-symbol-move-black
    src: "node-symbol-move-black.jpg"
    title:
  - name: node-symbol-move-white
    src: "node-symbol-move-white.jpg"
    title:
  - name: node-symbol-annotation
    src: "node-symbol-annotation.jpg"
    title:
  - name: node-symbol-markup
    src: "node-symbol-markup.jpg"
    title:
  - name: node-symbol-annotation-markup
    src: "node-symbol-annotation-markup.jpg"
    title:
  - name: create-new-game-variation-animation
    src: "create-new-game-variation-animation.mp4"
    title: Creating a new game variation
  - name: align-moves-not-aligned
    src: "align-moves-not-aligned.jpg"
    title: Normal display, moves are not aligned
  - name: align-moves-aligned
    src: "align-moves-aligned.jpg"
    title: Aligned moves
  - name: align-moves-aligned-node-numbering
    src: "align-moves-aligned-node-numbering.jpg"
    title: Aligned moves, nodes numbered only for current game variation
  - name: condense-moves-not-condensed
    src: "condense-moves-not-condensed.jpg"
    title: Normal display, moves are not condensed
  - name: condense-moves-condensed
    src: "condense-moves-condensed.jpg"
    title: Condensed moves
---

A game of Go on a phyiscal board is a linear sequence of moves. Go computer programs such as this app allow to add variations to the main line of moves, in order to explore alternate sequences of moves that in some way differ from the main line.

This manual page introduces the concept of a "game tree" to organize game variations, presents a glossary with term definitions that are important to understand the game tree concept, and then shows with numerous illustrations how the app's tree view feature works in detail.

{{< toc >}}

## The game tree

The app organizes a game and its variations into a game tree. A game that consists of only the main line is rendered like this:

{{< img name="game-tree-without-variations" size="origin" lazy=false >}}

A game that consists of the main line and several variations is rendered like this:

{{< img name="game-tree-with-variations" size="origin" lazy=false >}}

## Glossary

The following table defines terms that are important to understand because they are used throughout the remainder of this page without any further explanation.

The table is sorted alphabetically to facilitate the lookup of terms. The table is **not** intended to be read top-down - if you are new the recommended starting point is the term → Node. From there you can follow the cross-references indicated by an arrow (→).

The "Example(s)" column in the table refers to the annotations from the following illustration of a hypothetical game tree.

{{< img name="glossary-annotations" lazy=false >}}

| Term | Definition | Example(s) |
| ---  | --- | --- |
| Board position | The result of applying the content of a → node to the board. | |
| Branch | A sequence of → nodes, starting at the → child node of a → branching node and ending at a → leaf node. A branch is a partial → game variation. | Branch 1: Nodes C-J. Branch 2: E-J. Branch 3: I-J. Branch 4: K-M. Branch 5: N. Branch 6: O-Q. Branch 7: Q. Branch 8: R. Branch 9: S-T. |
| Branching node | A → node where game play branches into different → game variations. A branching node is a node that has two or more → child nodes. | Nodes B, D, H, P are branching nodes. |
| Child node | A successor → node of another node. The other node is the → parent node of the child node. A node with two or more child nodes is a → branching node. A node without a child node is a → leaf node. | All nodes except A are child nodes. |
| Current game variation | The → game variation that is currently selected in the user interface. The current game variation is rendered with a red path. | The current game variaton consists of nodes A, B, C, D, K, L and M. |
| Current node | The → node that is currently selected in the user interface. The board shows the content of the current node. The current node is rendered with a red circle. | Node L is the current node. |
| Game tree | The totality of all → game variations added together. The game tree is made up of → nodes. The start of the game tree is the → root node. | |
| Game variation | A sequence of → nodes, starting at the → root node and ending at a → leaf node. | Variation 1: Nodes A-J. Variation 2: A-N. Variation 3: A-M. Variation 4: A-Q. Variation 5: A-T. Variation 6: A-R. |
| Leaf node | A → node after which there are no further nodes. A leaf node has no → child nodes. | Nodes J, M, N, Q, R and T are leaf nodes. |
| Main line | Synonym for → main variation. | The main line consists of nodes A-J. |
| Main variation | The → game variation that consists of the main line of play, i.e. the game as it was actually played. The main variation is **always** rendered at the top of the → game tree. | The main variation consists of nodes A-J. |
| Node | The basic unit of the → game tree. A node is a container for information such as the move that was played, [annotations]({{< relref "../../game-editing/annotations" >}}) explaining the node content, or [markup]({{< relref "../../game-editing/annotations" >}}) to be drawn on the board to highlight a stone or group of stones. | |
| Parent node | The predecessor → node of another node. The only node that does not have a parent node is the → root node. All nodes except → leaf nodes are parent nodes. | All nodes except the leaf nodes J, M, N, Q, R and T are parent nodes. |
| Root node | The → node located at the root of the → game tree. The root node represents the start of the game. Instead of a move it contains information such as komi, handicap or [board setup]({{< relref "../../game-editing/board-setup" >}}). | Node A is the root node. |
| Sibling node | A → child node that shares a common → parent node with another child node. | Nodes C, O, R are siblings. Nodes E and K are siblings. Nodes Q and S are siblings. Nodes I and N are siblings. |

## The tree view

### Basic features

The app renders the game tree in a tree view which is always located below the game board. In previous illustrations on this page you may have already noticed some of the basic characteristics of the view:

- The game tree is rendered lying on the side.
- The root node is in the top-left corner.
- The main variation is at the top.

In addition, the basic interactons are:

- If the game tree takes up more space than is available you can use the usual swipe gesture to scroll the tree view content in all directions.
- Also if the game tree elements are rendered too small you can use the usual pinch/zoom gestures to zoom in and out. A double-tap gesture zooms in on the board by 50%.

### Resizing and hiding the view

{{< columns size=regular >}}

The tree view shares the available vertical space with the game board and possibly some other views. Just above the tree view there is a small translucent bar (outlined in the illustraton with a red rectangle) that you can tap and drag up or down to resize the tree view.

If you do not need the tree view at all you can turn it off in the Settings {{< icon "settings" >}} user interface area under "Tree view > Display tree view".

<--->

{{< img name="resize-tree-view" lazy=false >}}

{{< expand "Resize animation - tap to expand" >}}
<video width=100% controls autoplay loop style="margin: 1%">
  <source src="game-variations/resize-tree-view-animation.mp4" type="video/mp4">
  Your browser does not support the video tag.  
</video>
{{< /expand >}}

{{< /columns >}}

### Branching lines

The tree view draws lines between nodes to indicate how the nodes are connected. The first child node is always drawn on the same row as its parent node and the two are connected by a horizontal line.

If a node has several child nodes it becomes a branching node where two or more game variations originate. The second, third, etc. child node are connected to their parent node with a non-horizontal branching line. In the Settings {{< icon "settings" >}} user interface area under "Tree view > Branching style" you can select between two styles how the tree view should render branching lines.

{{< columns size=regular >}}

This is how the **diagonal** branching style looks like. It is the default style because it results in a compact rendering of the game tree with as few rows as possible.

<--->

{{< img name="branching-style-diagonal" size="origin" lazy=false >}}

{{< /columns >}}

{{< columns size=regular >}}

This is how the **right-angle** branching style looks like.

{{< hint type=note >}}
The illustraton shows exactly the same game tree as the previous illustraton for the diagonal branching style.
{{< /hint >}}

The advantage of this style is that if there are many branches close to each other it can result in a game tree that is more easily readable. The drawback is that the game tree can take up a lot more vertical space than the diagonal branching style.

<--->

{{< img name="branching-style-right-angle" size="origin" lazy=false >}}

{{< /columns >}}

### Tabular display and node numbering

The tree view by default renders the game tree in a tabular fashion:

- Rows are filled with game variations.
- Columns are filled with the nodes of the game tree.

This tabular display is possible because all nodes take up the same horizontal and vertical space. The [Condense moves](#condense-moves) section further down on this page illustrates a setting which, when enabled, causes a non-tabular display.

{{< columns size=regular >}}

As can be seen in the next illustration, the tree view displays a header with numbers at the top. This is used to number the nodes in the game tree, indicating their distance from the root node. The root node therefore has node number 0 (zero).

As long as the game tree is shown in its default tabular fashion, the node number can also be understood as the table column number.

<--->

{{< img name="node-numbers" size="origin" lazy=false >}}

{{< /columns >}}

{{< hint type=note >}}
In a game tree where all nodes contain a move, the node number and the move number are the same.
{{< /hint >}}

{{< hint type=tip >}}
The header with node numbers remains visible at all times, even when you scroll the tree view downwards.
{{< /hint >}}

### Current game variation and current node

{{< columns size=regular >}}

At any given time one of the variations in the game tree is selected, and one of the nodes within that game variation is selected. The tree view uses the color red to indicate the current selection:

- It marks the currently selected game variation with a red path going through all the lines that connect the variation's nodes.
- It marks the currently selected node with a red outline.
- It renders the node number of the current node in red color.

<--->

{{< img name="node-selection" size="origin" lazy=false >}}

{{< /columns >}}

In the Settings {{< icon "settings" >}} user interface area under "Tree view > Node selecton style" you can select between three styles how the tree view should render the selected node. The default style is "Light & circular".

{{< columns size=regular >}}

{{< img name="node-selection-light-circular" size="origin" lazy=false >}}

<--->

{{< img name="node-selection-heavy-circular" size="origin" lazy=false >}}

<--->

{{< img name="node-selection-heavy-rectangular" size="origin" lazy=false >}}

{{< /columns >}}

{{< hint type=tip >}}
You can tap on a node to make it the currently selected node. If the currently selected game variation does not contain the newly selected node, then the first game variation that contains the node becomes the currently selected game variation.
{{< /hint >}}

### Node symbol and content

Nodes are rendered with a symbol that indicates what the node contains. The basic content rules are:

- Setup and moves are the main node content. When present their symbol takes precedence over the symbol of other content.
- Setup and moves are mutually exclusive. A node may contain one or the other, but not both.
- Setup can be present in nodes beyond the root node, but not after the first move.
- The root node may contain setup, but no move.
- Annotations and markup can be present in all nodes, either on their own or in addition to other content.

The following table documents all the possible symbols and their meanings. 

| Symbol | Description |
| ---  | --- |
| {{< img name="node-symbol-komi" size="origin" lazy=false >}} | A root node that contains a komi value greater than zero. The node does not contain setup, annotations or markup. |
| {{< img name="node-symbol-handicap" size="origin" lazy=false >}} | A root node that contains a handicap value greater than zero. The node does not contain setup, annotations or markup. |
| {{< img name="node-symbol-handicap-komi" size="origin" lazy=false >}} | A root node that contains both a handicap and a komi value greater than zero. The node does not contain setup, annotations or markup. |
| {{< img name="node-symbol-root" size="origin" lazy=false >}} | A plain root node without handicap, komi or any other content. |
| {{< img name="node-symbol-move-black" size="origin" lazy=false >}} | A node that contains a black move. In addition the node may contain annotations and/or markup, but no setup.  |
| {{< img name="node-symbol-move-white" size="origin" lazy=false >}} | A node that contains a white move. In addition the node may contain annotations and/or markup, but no setup. |
| {{< img name="node-symbol-annotation" size="origin" lazy=false >}} | A node that contains annotations. The node does not contain a move, setup or markup. |
| {{< img name="node-symbol-markup" size="origin" lazy=false >}} | A node that contains markup. The node does not contain a move, setup or annotations. |
| {{< img name="node-symbol-annotation-markup" size="origin" lazy=false >}} | A node that contains both annotations and markup. The node does not contain a move or setup. |
| {{< img name="node-symbol-setup-black" size="origin" lazy=false >}} | A node that contains black setup stones. In addition the node may contain annotations and/or markup, but no move. |
| {{< img name="node-symbol-setup-white" size="origin" lazy=false >}} | A node that contains white setup stones. In addition the node may contain annotations and/or markup, but no move. |
| {{< img name="node-symbol-setup-clear" size="origin" lazy=false >}} | A node that clears setup stones from a previous node. In addition the node may contain annotations and/or markup, but no move. |
| {{< img name="node-symbol-setup-black-white" size="origin" lazy=false >}} | A node that contains black and white setup stones. In addition the node may contain annotations and/or markup, but no move. |
| {{< img name="node-symbol-setup-black-clear" size="origin" lazy=false >}} | A node that contains black setup stones and also clears setup stones from a previous node. In addition the node may contain annotations and/or markup, but no move. |
| {{< img name="node-symbol-setup-white-clear" size="origin" lazy=false >}} | A node that contains white setup stones and also clears setup stones from a previous node. In addition the node may contain annotations and/or markup, but no move. |
| {{< img name="node-symbol-setup-black-white-clear" size="origin" lazy=false >}} | A node that contains black and white setup stones and also clears setup stones from a previous node. In addition the node may contain annotations and/or markup, but no move. |

{{< hint type=note >}}
The app currently does not support creating the following nodes:

- A node that contains only annotations and/or markup but no move.
- A node beyond the root node that contains setup. Board setup is restricted to the root node.

Such nodes can exist, though, when you load SGF files from the archive that were created by other programs.
{{< /hint >}}

## How to create a game variation

When a new game begins and you start playing moves, then those moves are simply added one after the other, forming the linear sequence of moves known as the main line, or main game variation.

{{< columns size=regular >}}

To create a game variation you first have to go back in the main line to a node that contains an older move. When you make a move now, the app creates a new game variation with the move you just made as the first move of the branch that deviates from the main line.

{{< hint type=note >}}
By default new game variations are inserted below the current game variation. You can change the location in the Settings {{< icon "settings" >}} user interface area under "Game variations > New game variation insert position".
{{< /hint >}}

In the following animation the user can be seen to go back to move 2 after playing move 4. When the user then plays a new move a new game variation is inserted with the new move being move 3. Another game variation is created when the user goes back to the root node and plays a move there.

<--->

<video width=100% controls autoplay loop style="margin: 1%">
  <source src="game-variations/create-new-game-variation-animation.mp4" type="video/mp4">
  Your browser does not support the video tag.  
</video>

{{< /columns >}}

{{< hint type=note >}}
If you do not want to play with game variations you can turn the feature off in the Settings {{< icon "settings" >}} user interface area under "Game variations > Move creates new game variation when future nodes exist".

When the setting is disabled the app instead discards future nodes in the current game variation and replaces them with the new move.
{{< /hint >}}

## Settings

### Align moves

By default the tree view draws nodes one after the other as they appear in their game variations. If the game tree contains nodes without moves, then the tree view may draw nodes with moves that have the same move number in different horizontal positons.

This can be changed in the Settings {{< icon "settings" >}} user interface area under "Tree view > Align moves". When you turn this option on then nodes with moves that have the same move number are drawn in the same horizontal positon.

{{< columns size=regular >}}

{{< img name="align-moves-not-aligned" size="origin" lazy=false >}}

This illustration shows that the node with move number 1 in different game variations is drawn in different positions:

- Main variation: The node with move number 1 has node number 10.
- Variation 2: The node with move number 1 has node number 3.
- Variation 3: The node with move number 1 has node number 7.

<--->

{{< img name="align-moves-aligned" size="origin" lazy=false >}}

When the "Align moves" setting is enabled, all 3 nodes with move number 1 are aligned on the same horizontal position.

The drawback of aligning moves is that the game tree can take up a lot more horizontal space.

{{< /columns >}}

{{< hint type=note title="Node numbering notes" >}}

When move nodes are aligned their node number within the game variation does not change. The consequence is that when the "Align moves" setting is enabled node numbering takes place only for the current game variation.

{{< columns size=regular >}}

The following illustration shows that in game variation 2 the node with move number 1 still has node number 3 (compare to original illustration without move alignment).

<--->

{{< img name="align-moves-aligned-node-numbering" size="origin" lazy=false >}}

{{< /columns >}}

{{< /hint >}}

### Condense moves

By default the tree view displays all nodes with the same size. This can be changed in the Settings {{< icon "settings" >}} user interface area under "Tree view > Condense moves". When this setting is turned on, move nodes within a sequence of move nodes are condensed, i.e. they are drawn smaller than move nodes at the beginning or end of the sequence.

The purpose of condensing move nodes is to de-emphasize repetitive content and to enable focusing on interesting nodes in the game tree. This is done at the cost of making the tree look less uniform.

{{< columns size=regular >}}

{{< img name="condense-moves-not-condensed" size="origin" lazy=false >}}

<--->

{{< img name="condense-moves-condensed" size="origin" lazy=false >}}

{{< /columns >}}

The second illustration shows that certain move nodes are drawn with full size even though they are not at the beginning or end of a sequence of move nodes. These are the exceptions:

- A move node that is a branching node (node number 4 in the illustration). Such a node is considered interesting because it marks a turning point in the game where different decisions lead to different game play.
- A move node that is the beginning of a new branch (node number 5 in three variations). Similarly to branching nodes, such nodes are interesting because they contain the actual move that differs from other branches.
- A move node that is the leaf node of a game variation. These nodes are interesting because they contain the result of playing out the game variation.

{{< hint type=note title="Node numbering notes" >}}
When move nodes are condensed the horizontal positioning of nodes can greatly vary and it is no longer possible to uniformly number nodes across all game variations in a tabular fashion. The consequence is that when the "Condense moves" setting is enabled node numbering takes place only for the current game variation.

In addition, the node number of a condensed move node takes up more space than the node it is numbering. This becomes more evident when node numbers have 2, 3 or even 4 digits. Because of this there are gaps in numbering consecutive condensed move nodes, as can be seen above in the second illustration.
{{< /hint >}}

### Focus on selected node

One way to change the selected node is to tap on that node in the tree view. However, there are also other triggers outside the tree view that can change the selected node. Examples are when you or the computer play a new move, or when you go to the start or end of the current game variation via one of the navigation buttons (see page [The current game variation]({{< relref "../current-game-variation" >}})).

By default when the selected node changes the tree view scrolls to make the newly selected node visible. This behaviour can be changed in the Settings {{< icon "settings" >}} user interface area under "Tree view > Focus on selected node".

You can either disable focusing on the selected node entirely, or select between three focusing modes.

{{< columns size=regular >}}

#### Focus mode "Scroll to make visible"

Condition: The node tree view focus-scrolls only if the newly selected node is currently not visible, or only partially visible.

Action: The view scrolls just enough to make the newly selected node fully visible **at one of the view's edges**.

{{< expand "Animation - tap to expand" >}}
<video width=100% controls autoplay loop style="margin: 1%">
  <source src="game-variations/focus-mode-scroll-to-make-visible.mp4" type="video/mp4">
  Your browser does not support the video tag.  
</video>
{{< /expand >}}

<--->

#### Focus mode "Scroll to make visible centered"

Condition: The node tree view focus-scrolls only if the newly selected node is currently not visible, or only partially visible.

Action: The view scrolls to make the newly selected node fully visible **at the center of the view**.

{{< expand "Animation - tap to expand" >}}
<video width=100% controls autoplay loop style="margin: 1%">
  <source src="game-variations/focus-mode-scroll-to-make-visible-centered.mp4" type="video/mp4">
  Your browser does not support the video tag.  
</video>
{{< /expand >}}

<--->

#### Focus mode "Scroll to center (even if visible)"

Condition: None. The node tree view always focus-scrolls, even if the newly selected node is already fully visible.

Action: The view scrolls to show the newly selected node fully visible **at the center of the view**.

{{< expand "Animation - tap to expand" >}}
<video width=100% controls autoplay loop style="margin: 1%">
  <source src="game-variations/focus-mode-scroll-to-center.mp4" type="video/mp4">
  Your browser does not support the video tag.  
</video>
{{< /expand >}}

{{< /columns >}}

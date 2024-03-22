---
title: Annotations
weight: 200
resources:
  - name: annotations-page1-no-annotatons
    src: "annotations-page1-no-annotatons.svg"
    title: Annotations page 1, without any annotations
  - name: annotations-page1-with-annotatons
    src: "annotations-page1-with-annotatons.jpg"
    title: Annotations page 1, with annotations
  - name: annotations-page2-no-annotatons
    src: "annotations-page2-no-annotatons.svg"
    title: Annotations page 2, without any annotations
  - name: annotations-page2-with-annotatons
    src: "annotations-page2-with-annotatons.jpg"
    title: Annotations page 2, with annotations
  - name: board-position-collectionvew-cell
    src: "board-position-collectionvew-cell.jpg"
    title: Node content with symbols for annotations and hotspot
---

You can annotate every node in the game tree in several ways so that when you pass a saved game to someone else they can view the game and get useful information about the moves that were played and the positions that resulted from those moves.

{{< toc >}}

## Annotation user interface

The user interface makes the controls for viewing and editing annotations available to you in the Annotation view. The Annotation view displays the annotation data for the game tree node that is currently selected.

Because there is not enough screen space available to display all annotations at the same time, the Annotation view is split into two pages. To change from one page to the next you use a swipe-left or swipe-right gesture.

In the lower part of the view (highlighted in red in the page 1 illustration below) is an indicator which page of the Annotation view you are currently viewing. Instead of swiping you can tap on the page indicator to go the next or previous page.

### Page 1

{{< columns size=regular >}}

On page 1 of the Annotation view there are four buttons representing four of the six types of annotations that you can make. Tapping a button will call up a screen with values that match the button's annotation type. When you select one of the values you annotate the game tree node with the selected value.

{{< hint type=note title="Example" >}}
When you tap the button labeled "Move" and select the value "Bad move", the game tree node is annotated to the effect that the move in that node, made by whichever player, is a bad move for that player.
{{< /hint >}}

<--->

{{< img name="annotations-page1-no-annotatons" size="origin" lazy=false >}}

{{< /columns >}}

{{< columns size=regular >}}

The icon used for each button represents the value currently selected for the button's annotation type. In the illustration above all buttons use the icon {{< icon "none" >}}, which indicates "No value". This is the default if you haven't annotated a node yet. Here is an example illustration showing some icons after a value was selected for all four annotation types on page 1.

{{< hint type=tip >}}
If you don't remember which value an icon represents you can tap the button and check in the screen that pops up what the icon means.
{{< /hint >}}

<--->

{{< img name="annotations-page1-with-annotatons" size="origin" lazy=false >}}

{{< /columns >}}

### Page 2

{{< columns size=regular >}}

On page 2 of the Annotation view you find the short and long descriptions of the game tree node. Highlighted in red are buttons that you use to edit the description texts.

Tapping the Edit {{< icon "edit" >}} button will call up the "Edit node description" screen where you can edit both description types at the same time.

Tapping the Delete {{< icon "trashcan" >}} button will discard both descriptions - this is a shortcut to calling up the "Edit node description" screen and manually deleting the description texts.

<--->

{{< img name="annotations-page2-no-annotatons" size="origin" lazy=false >}}

{{< /columns >}}

{{< columns size=regular >}}

The illustration above shows how the page looks like when no descriptions are present. Here is an example illustration showing how the page looks like when both descriptions are present.

Also note that now that descriptions are present the Delete {{< icon "trashcan" >}} button is enabled.

<--->

{{< img name="annotations-page2-with-annotatons" size="origin" lazy=false >}}

{{< /columns >}}

### Node content view

{{< columns size=regular >}}

In the list of nodes of the currently selected game variation, a node content view also displays a bit of annotation data:

- The view shows the {{< icon "about" >}} symbol if the node contains *any* annotation data.
- The view shows the {{< icon "hotspot" >}} symbol if the node is designated as a hotspot. The symbol is either black (regular hotspot) or red (intense hot spot).

<--->

{{< img name="board-position-collectionvew-cell" size="origin" lazy=false >}}

{{< /columns >}}

## Annotaton types

### Short and long descriptions

You can write a short and/or a long description text to describe a game tree node. You can use these texts in any way you like, for instance to describe in detail what motivated the move that was played to create the board position, or why the move was particularly good or bad. Description texts might also, for instance, refer to markup that is visible in that board position. To learn more, read the [Markup]({{< relref "../markup" >}}) section of this manual.

The text you write for the long description has no limits - it can even contain newlines. The short description text on the other hand may **not** contain any newlines - if you attempt to enter a newline the app will convert it to a space character. By definition the short description text should be succinct so that it can be displayed by a program even if there is not much screen space available.

### Position valuation

You can assign a valuation to a game tree node, such as "good for black", "very good for white", "even", etc. The position valuation is not tied to a particular move but to the board position as a whole.

You can choose from the following positon valuations:

| Symbol | Value |
| ---  | --- |
| {{< icon "stone-black-icon" >}} | The position is good for black. |
| {{< icon "stones-overlapping-black-icon" >}} | The position is very good for black. |
| {{< icon "stone-white-icon" >}} | The position is good for white. |
| {{< icon "stones-overlapping-white-icon" >}} | The position is very good for white. |
| {{< icon "stone-black-and-white-icon" >}} | The position is even. |
| {{< icon "stones-overlapping-black-and-white-icon" >}} | The position is very even. |
| {{< icon "unclear" >}} | The position is unclear. |
| {{< icon "very-unclear" >}} | The position is very unclear. |
| {{< icon "none" >}} | There is no position valuation. |

### Move valuation

You can assign a valuation to the move that was being played to create a board position, such as "good move", "very bad move", "doubtful move", etc.

{{< hint type=note >}}
You cannot assign a move valuation if the current game tree node does not contain a move. For instance, you cannot assign a move valuation when you are viewing the node at the start of the game.
{{< /hint >}}

You can choose from the following move valuations:

| Symbol | Value |
| ---  | --- |
| {{< icon "good" >}} | The move is a good move. |
| {{< icon "very-good" >}} | The move is a very good move. |
| {{< icon "bad" >}} | The move is a bad move. |
| {{< icon "very-bad" >}} | The move is a very bad move. |
| {{< icon "interesting" >}} | The move is interesting. |
| {{< icon "doubtful" >}} | The move is doubtful. |
| {{< icon "none" >}} | There is no move valuation. |

### Hotspot designation

You can designate a game tree node to be a "hotspot" to indicate that something particularly interesting happened in that node. For instance the node contains a game-deciding move. The "hotspot" is not related to any specific place on the board, but marks the whole board position instead.

You can choose from the following hotspot designations:

| Symbol | Value |
| ---  | --- |
| {{< icon "hotspot" >}} | The node is a hotspot. |
| {{< icon "hotspot-intense" >}} | The node is an "intense" hotspot, i.e. the regular hotspot designation is emphasized. |
| {{< icon "none" >}} | There is no hotspot designation. |

### Score estimate

You can assign a score estimate to a board position. This consists of the information which side is winning (black or white), and by how much (a numeric value). The score estimate may also indicate a tie.

Because score estimates contain numeric data they cannot be shown as symbols, instead they are shown in text form that follows a well-known convention.

These are the possible score estimate values:

| Score estimate | Value |
| ---  | --- |
| B+&lt;n&gt; | Black wins by &lt;n&gt; points. Example: B+3.5. |
| W+&lt;n&gt; | White wins by &lt;n&gt; points. Example: W+8.5. |
| Tie | The game is a tie |
| {{< icon "none" >}} | There is no score estimate. |

## Mapping to SGF properties

For the technically inclined, here is how each annotation value maps to properties defined by the SGF standard.

| Annotation value | SGF property | SGF property value | Remark |
| ---  | --- | --- | --- |
| [Short and long descriptions](#short-and-long-descriptions) |
| Short description | N | Short descripton text | The property name derives from "node title". |
| Long description | C | Long description text | The property name derives from "node comment". |
| [Position valuation values](#position-valuation) |
| Good for black | GB | 1 | |
| Very good for black | GB | 2 | |
| Good for white | GW | 1 | |
| Very good for white | GW | 2 | |
| Even | DM | 1 | |
| Very even | DM | 2 | |
| Unclear | UC | 1 | |
| Very unclear | UC | 2 | |
| [Move valuation values](#move-valuation) |
| Good | TE | 1 | The property name derives from the term "tesuji" (good move). |
| Very good | TE | 2 | Ditto. |
| Bad | BM | 1 | |
| Very bad | BM | 2 | |
| Interesting | IT | No value | |
| Doubtful | DO | No value | |
| [Hotspot designation values](#hotspot-designation) |
| Hotspot | HO | 1 | |
| Intense hotspot | HO | 2 | |
| [Score estimate values](#score-estimate) |
| Black wins by &lt;n&gt; points | V | Positive number | The property name derives from "node value". |
| White wins by &lt;n&gt; points | V | Negative number | Ditto. |
| Game is a tie | V | 0.0 | Ditto. |

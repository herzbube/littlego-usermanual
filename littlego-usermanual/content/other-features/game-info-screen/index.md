---
title: Game info screen
weight: 100
resources:
  - name: game-info-score-tab-play-mode
    src: "game-info-score-tab-play-mode.jpg"
    title: Game info screen, "Score" tab when Scoring mode is not active
  - name: game-info-score-tab-scoring-mode
    src: "game-info-score-tab-scoring-mode.jpg"
    title: Game info screen, "Score" tab when Scoring mode is active
  - name: game-info-game-tab-page-1
    src: "game-info-game-tab-page-1.jpg"
    title: Game info screen, page 1 on the "Game" tab 
  - name: game-info-game-tab-page-2
    src: "game-info-game-tab-page-2.jpg"
    title: Game info screen, page 2 on the "Game" tab
  - name: game-info-board-tab
    src: "game-info-board-tab.jpg"
    title: Game info screen, "Board" tab
---

The Play {{< icon "gogrid2x2" >}} area of the app always displays the Game Info {{< icon "game-info" >}} button. Tapping the button calls up the "Game Info" screen which shows all sorts of useful information about the game that is currently in progress.

The screen uses tabs to organize the content it displays. When you call up the screen the app automatically activates the tab that was selected when the screen was open the last time.

{{< toc >}}

## The "Score" tab

The "Score" tab displays scoring information in a tabular fashion. The amount of information that is available depends on whether or not Scoring {{< icon "scoring" >}} mode is currently activated. See the [Scoring]({{< relref "../../playing-the-game/scoring" >}}) page for Scoring {{< icon "scoring" >}} mode details.

{{< hint type=note >}}
If Scoring {{< icon "scoring" >}} mode is not activated then the stone count (area scoring) or dead stone count (territory scoring) as well as the territory score are not available. Consequently the final score that results from tabulating the available data is of no great value and should not be used for any decisions.
{{< /hint >}}

The scoring information shown refers to the board state in the currently selected node. See the [Game variations]({{< relref "../../game-organization/game-variations" >}}) page and/or the [Current game variation]({{< relref "../../game-organization/current-game-variation" >}}) page to learn more about nodes.

{{< columns size=regular >}}

{{< img name="game-info-score-tab-play-mode" size="origin" lazy=false >}}

<--->

{{< img name="game-info-score-tab-scoring-mode" size="origin" lazy=false >}}

{{< /columns >}}

## The "Game" tab

The "Game" tab contains a great deal of information about the game that is currently in progress. The information is categorized into four sections:

| Section | Description |
| ---  | --- |
| Game state | Shows whether or not the game is in progress and what the current and next moves are. |
| Game information | Shows the rules that were chosen when the game was started. |
| Players | Shows the names of the two players. Tapping the item for a player calls up a screen with the player data, just as if the player had been selected in the Settings {{< icon "settings" >}} area of the app under "Players" (see the [Players]({{< relref "../../settings/players" >}}) page for details). In a human vs. human player game a third item labeled "Computer settings" is displayed which when tapped leads to the [background computer player's]({{< relref "../../settings/computer-player#the-background-computer-player" >}}) settings. |
| Move statistics | Displays some mildly amusing statistics about the moves played during the current game. |

{{< columns size=regular >}}

{{< img name="game-info-game-tab-page-1" size="origin" lazy=false >}}

<--->

{{< img name="game-info-game-tab-page-2" size="origin" lazy=false >}}

{{< /columns >}}

## The "Board" tab

{{< columns size=regular >}}

The "Board" tab display a few bits of information related to the board state in the currently selected node.

See the [Game variations]({{< relref "../../game-organization/game-variations" >}}) page and/or the [Current game variation]({{< relref "../../game-organization/current-game-variation" >}}) page to learn more about nodes.

<--->

{{< img name="game-info-board-tab" size="origin" lazy=false >}}

{{< /columns >}}

---
title: Game info screen
weight: 100
resources:
  - name: game-info-score-tab-play-mode
    src: "game-info-score-tab-play-mode.png"
    title: Game info screen, "Score" tab when Scoring mode is not active
  - name: game-info-score-tab-scoring-mode
    src: "game-info-score-tab-scoring-mode.png"
    title: Game info screen, "Score" tab when Scoring mode is active
  - name: game-info-game-tab-page-1
    src: "game-info-game-tab-page-1.png"
    title: Game info screen, page 1 on the "Game" tab 
  - name: game-info-game-tab-page-2
    src: "game-info-game-tab-page-2.png"
    title: Game info screen, page 2 on the "Game" tab
  - name: game-info-game-tab-page-3
    src: "game-info-game-tab-page-3.png"
    title: Game info screen, page 3 on the "Game" tab
  - name: game-info-board-tab
    src: "game-info-board-tab.png"
    title: Game info screen, "Board" tab
  - name: game-info-info-tab-page-1
    src: "game-info-info-tab-page-1.png"
    title: Game info screen, page 1 on the "Info" tab 
  - name: game-info-info-tab-page-2
    src: "game-info-info-tab-page-2.png"
    title: Game info screen, page 2 on the "Info" tab 
---

The Play {{< icon "gogrid2x2" >}} area of the app always displays the Game Info {{< icon "game-info" >}} button. Tapping the button calls up the "Game Info" screen which shows all sorts of useful information about the game that is currently in progress.

The screen uses tabs to organize the content it displays. When you call up the screen the app automatically activates the tab that was selected when the screen was open the last time.

{{< toc >}}

## The "Score" tab

The "Score" tab displays scoring information in a tabular fashion. The amount of information that is available depends on whether or not Scoring {{< icon "scoring" >}} mode is currently activated. See the [Scoring]({{< relref "../playing-the-game/scoring" >}}) page for Scoring {{< icon "scoring" >}} mode details.

{{< hint type=note >}}
If Scoring {{< icon "scoring" >}} mode is not activated then the stone count (area scoring) or dead stone count (territory scoring) as well as the territory score are not available. Consequently the final score that results from tabulating the available data is of no great value and should not be used for any decisions.
{{< /hint >}}

The scoring information shown refers to the board state in the currently selected node. See the [Game variations]({{< relref "../game-organization/game-variations" >}}) page and/or the [Current game variation]({{< relref "../game-organization/current-game-variation" >}}) page to learn more about nodes.

The overall game result is shown below the scoring information table. Tapping the "Use score as game result" button is a convenient way to quickly set the game result to reflect the data in the scoring information table, without having to manually enter that data. For more information on the meaning and uses of the game result, see [The game result]({{< relref "../../playing-the-game/game-result" >}}) manual page.

{{< columns size=regular >}}

{{< img name="game-info-score-tab-play-mode" size="origin" lazy=false >}}

<--->

{{< img name="game-info-score-tab-scoring-mode" size="origin" lazy=false >}}

{{< /columns >}}

## The "Game" tab

The "Game" tab contains a great deal of information about the game that is currently in progress. The information is categorized into five sections:

| Section | Description |
| ---  | --- |
| Game state | Shows whether or not the game is in progress and what the current and next moves are. |
| Game information | Shows the rules that were chosen when the game was started. |
| Time settings | Shows the time settings (if any) that were selected when the game was started. See the [Timed play]({{< relref "../playing-the-game/timed-play" >}}) page for details. |
| Players | Shows the names of the two players. Tapping the item for a player calls up a screen with the player data, just as if the player had been selected in the Settings {{< icon "settings" >}} area of the app under "Players" (see the [Players]({{< relref "../settings/players" >}}) page for details). In a human vs. human player game a third item labeled "Computer settings" is displayed which when tapped leads to the [background computer player's]({{< relref "../settings/computer-player#the-background-computer-player" >}}) settings. |
| Move statistics | Displays some mildly amusing statistics about the moves played during the current game. |

{{< columns size=regular >}}

{{< img name="game-info-game-tab-page-1" size="origin" lazy=false >}}

<--->

{{< img name="game-info-game-tab-page-2" size="origin" lazy=false >}}

<--->

{{< img name="game-info-game-tab-page-3" size="origin" lazy=false >}}

{{< /columns >}}

## The "Board" tab

{{< columns size=regular >}}

The "Board" tab display a few bits of information related to the board state in the currently selected node.

See the [Game variations]({{< relref "../game-organization/game-variations" >}}) page and/or the [Current game variation]({{< relref "../game-organization/current-game-variation" >}}) page to learn more about nodes.

<--->

{{< img name="game-info-board-tab" size="origin" lazy=false >}}

{{< /columns >}}

## The "Info" tab

The "Info" tab displays a large number of items that describe various aspects of the game. These items have no impact whatsoever on the actual game play, they are merely informational. When you save the game to the archive, the items are stored as metadata alongside the game record.

You can edit all items on the "Info" tab by tapping them. If you are not sure of the meaning of an item, tap it and you will see a hint on the edit screen that pops up.

Most of the items allow entering a single line of text. There are a few exceptions, though:

| Item | Description |
| ---  | --- |
| Game information | Allows entering a long text that may span multiple lines. |
| Game dates | Guided entry of the date (or dates), when the game was played. Any number of dates can be entered. If a full date is not known (e.g. for historical games), you can enter only the month and the year, or only the year when the game was played. |
| Game rules | Select from a number of pre-defined rule sets, or enter a custom free-form rule set name. The pre-defined rule sets correspond to the rule sets that are listed as mandatory in the [SGF file format specification](https://www.red-bean.com/sgf/properties.html#RU). |
| Black/White player rank | Guided entry of a numeric rank from the pre-defined rank types "kyu", "amateur dan" and "professional dan". If you want to use a different rank system, you can enter a custom free-form rank description. |
| Round information | Either enter a combination of round type (e.g. final, playoff, etc.) and round number, or a custom free-form round description. |

{{< hint type=note >}}
When you start a new game, the app populates the "Black player name" and "White player name" items with the names of the players that you selected in the "New game" screen. All other items are left unset.

When you load a game from the archive, the app populates the items with the metadata it finds in the archived game.
{{< /hint >}}

{{< columns size=regular >}}

{{< img name="game-info-info-tab-page-1" size="origin" lazy=false >}}

<--->

{{< img name="game-info-info-tab-page-2" size="origin" lazy=false >}}

{{< /columns >}}

## Mapping to SGF properties

For the technically inclined, here is how each "Info" tab item maps to a property defined by the SGF standard.

| Item | SGF property | SGF property value | Remark |
| ---  | --- | --- | --- |
| **Game data / game record information** |
| Recorder name | US | SimpleText | |
| Source name | SO | SimpleText | |
| Annotation author | AN | SimpleText | |
| Copyright information | CP | SimpleText | |
| **Game information** |
| Game name | GN | SimpleText | |
| Game information | GC | Text | |
| Game dates | DT | SimpleText | The SGF standard specifies a mandatory encoding format. Because of this the app allows only guided data entry. |
| Game rules | RU | SimpleText | The SGF standard specifies mandatory values for a limited number of rule sets. |
| Opening information | ON | SimpleText | |
| **Black player** |
| Black player name | PB | SimpleText | |
| Black player rank | BR | SimpleText | The SGF standard recommends an encoding format. |
| Black player team name | BT | SimpleText | |
| **White player** |
| White player name | PW | SimpleText | |
| White player rank | WR | SimpleText | The SGF standard recommends an encoding format. |
| White player team name | WT | SimpleText | |
| **Context in which the game was played** |
| Game location | PC | SimpleText | |
| Event name | EV | SimpleText | |
| Round information | RO | SimpleText | The SGF standard suggests an encoding format ("should be written in the following way"). |

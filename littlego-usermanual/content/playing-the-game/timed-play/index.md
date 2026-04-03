---
title: Timed play
weight: 600
resources:
  - name: timed-play-start-new-game
    src: "timed-play-start-new-game.svg"
    title: Where to start a new game with timed play
  - name: timed-play-time-settings-timed-play-disabled
    src: "timed-play-time-settings-timed-play-disabled.png"
    title: Time settings with timed play disabled
  - name: timed-play-time-settings-default-settings
    src: "timed-play-time-settings-default-settings.svg"
    title: Default time settings
  - name: timed-play-time-settings-summary
    src: "timed-play-time-settings-summary.png"
    title: Time settings summary
  - name: timed-play-overtime-systems
    src: "timed-play-overtime-systems.png"
    title: The Overtime systems supported by the app
  - name: timed-play-canadian-timing-settings
    src: "timed-play-canadian-timing-settings.png"
    title: Canadian Timing settings
  - name: timed-play-japanese-timing-settings
    src: "timed-play-japanese-timing-settings.png"
    title: Japanese Timing settings
  - name: timed-play-fischer-timing-settings
    src: "timed-play-fischer-timing-settings.png"
    title: Fischer Timing settings
---

{{< toc >}}

## Starting a new game with timed play

The default mode to play Go in this app is without any time limit. If you like, however, you can give yourself (and your opponent) a limited amount of time to make your moves.

{{< columns size=regular >}}

The place to enable this is, naturally, on the "New game" screen, specifically at the very bottom of the screen (expand the illustration on the right). where you find the "Time settings" item. This item is available for all three game types: human vs. computer, human vs. human, and computer vs. computer).

See the [Start a new game]({{< relref "start-a-new-game" >}}) manual page for details on other options that can be selected for the new game.

<--->

{{< expand "\"Time settings\" item at the bottom of the \"New Game\" screen" >}}

{{< img name="timed-play-start-new-game" size="origin" lazy=false >}}

{{< /expand >}}

{{< /columns >}}

{{< columns size=regular >}}

Tapping the "Time settings" item calls up another screen where you can choose from a number of time limit options.

By default timed play is disabled, as shown in the illustration on the right. Tapping the "Use timed play" toggle will enable timed play and show the time limit options that were hidden until now. Continue to read to learn more.

{{< hint type=tip >}}
As is the case with other "New game" options, once you start the game the chosen time settings can no longer be changed.
{{< /hint >}}

<--->

{{< img name="timed-play-time-settings-timed-play-disabled" size="origin" lazy=false >}}

{{< /columns >}}

The next two sections first explore the basic concepts of Main time and Overtime, but if you already know what these are, feel free to jump ahead to the [Default time settings]({{< relref "#default-time-settings" >}}) section further down.

## Main time and Overtime introduction

The app allows to split a game with time limits into two distinct phases, called "Main time" and "Overtime". On a timeline:

```
+----- Main time -----++----- Overtime -----+
|                     ||                    |
v                     vv                    v
-------------------------------------------->
Game start                            Game end
```

{{< hint type=tip >}}
The diagram implies that Main time and Overtime are of equal length. As will soon become clear, this ist **not** the case.
{{< /hint >}}

A game can combine Main time and Overtime in different ways:

| Combination | Remarks |
| ---  | --- |
| Only Main time | When a player runs out of Main time, they lose the game. |
| Only Overtime | When a player runs out of Overtime, they lose the game. |
| Both Main time and Overtime | The order is always Main time followed by Overtime, never the other way around. When a player runs out of Main time, the Overtime system kicks in. When the player also runs out of Overtime, they lose the game. |
| Neither Main time nor Overtime | Timed play is disabled. |

## Definitions

### Definition of Main time

Main time is the simplest possible time system: A straight amount of time from which time is deducted for each move a player makes.

When a player's remaining Main time reaches zero the player loses the game, unless the game is also configured with Overtime, in which case the player receives additional time based on the configured Overtime system.

Main time is sometimes also called "Sudden death". The time system used for Main time is known as "Absolute Timing".

For details see the entry for "Absolute Timing" on the website [Sensei's Library](https://senseis.xmp.net/?AbsoluteTiming).

### Definition of Overtime

In this app, "Overtime" is used as a general term referring to that part in the game that is governed by the rules of an Overtime **system**.

The app supports several such Overtime **systems**. Although the details differ, all Overtime systems have the following common characteristics:

- The player is required to make a certain **number of moves** within a given time period.
- If the player manages to make the required number of moves before they run out of time, they get additional time.
- If the player fails to make the required number of moves, they lose the game.

See the [Time systems]({{< relref "#time-systems" >}}) section further down for a list of all time systems supported by the app, and the detailed rules that govern those time systems.

## Default time settings

The following illustrations shows the default time settings when you enable timed play for the first time.

{{< columns size=regular >}}

{{< img name="timed-play-time-settings-default-settings" size="origin" lazy=false >}}

<--->

1. At the top is the toggle option that lets you enable and disable timed play.
1. The "Use main time" toggle option enables or disables Main time. See the previous sections for a definition of what Main time is.
1. The "Main time" slider lets you adjust how much time each player initially should have available during the Main time phase of the game. The stepper lets you fine-tune the duration.
1. The "Use overtime" toggle option enables or disables Overtime. See the previous sections for a definition of what Overtime is.
1. The "Time system" item displays which Overtime system is currently selected. Tapping the item calls up another screen where you can select a different Overtime system. The default, as shown in the illustration, is Canadian Timing. The available Overtime systems and their rules are explained in detail in the next section. 
1. The "Period duration" slider lets you adjust how much time each player has to make the number of moves that is selected in the "Moves per period" item. The stepper lets you fine-tune the duration. **Note:** This setting is specific to Canadian Timing. When you select a different Overtime system, it will be replaced with a different setting.
1. The "Moves per period" slider lets you adjust how many moves each player has to make within the time that is selected in the "Period duration" item. The stepper lets you fine-tune the number. **Note:** This setting is specific to Canadian Timing. When you select a different Overtime system, it will be replaced with a different setting.

{{< /columns >}}

{{< hint type=tip >}}
The app remembers the time settings you choose. When you start a new game the next time, the same time settings will be selected by default.
{{< /hint >}}

{{< hint type=tip >}}
The app also remembers the settings you select per time system. When you play game A with Canadian Timing, then play game B with Japanese Timing, then return to Canadian Timing for game C, the app will use the same Canadian Timing settings you used for game A.
{{< /hint >}}

{{< columns size=regular >}}

When you enable timed play and return to the "New game" screen, the app shows you a summary of the time settings you selected.

For brevity's sake, the summary cannot show durations and numbers, but it shows whether you have enabled Main time or Overtime (or both), and, if applicable, the selected Overtime system.

<--->

{{< img name="timed-play-time-settings-summary" size="origin" lazy=false >}}

{{< /columns >}}

## Time systems

### Timesystem overview

The following illustrations shows the Overtime systems that the app supports, together with a few brief remarks.

{{< columns size=regular >}}

{{< img name="timed-play-overtime-systems" size="origin" lazy=false >}}

<--->

| Overtime system | Remarks |
| ---  | --- |
| Canadian Timing | A popular time system in amateur tournaments. Also in use on Go servers, for instance KGS. |
| Japanese Timing | This is also known as "byoyomi" (秒読み). Used both in real-world tournaments and on Go servers, for instance KGS. |
| Fischer Timing | Named after chess player Bobby Fischer. Used both in real-world tournaments and on Go servers, for instance online-go.com.  |
| Steady Average Timing | Similar to Canadian Timing, but allows additional moves to be made if the period time is not fully used. |
| Total Average Timing | Similar to Canadian Timing, but adds unused period time to the time available to the player. |

{{< /columns >}}

### Canadian Timing

{{< columns size=regular >}}

The illustration shows the settings that you can adjust when you select Canadian Timing as the Overtime sytem.

This is how it works:

- The player gets an amount of time - the "period duration". The illustration shows 10 minutes as an example.
- The player must make a number of moves during that time period. The illustration shows 25 moves as an example.
- If the player runs out of time before having made the required number of moves, the player loses the game.
- If the player manages to make the required number of moves, a new period begins and the player again must make the same number of moves during that period.
- Any unused time is discarded. In the example from the illustration, if the player made 25 minutes within 9 minutes and 30 seconds, the unused 30 seconds are discarded and the next period again starts with 10 minutes.

<--->

{{< img name="timed-play-canadian-timing-settings" size="origin" lazy=false >}}

{{< /columns >}}

For more details on Canadian Timing, see [Sensei's Library](https://senseis.xmp.net/?CanadianTiming).

### Japanese Timing

{{< columns size=regular >}}

The illustration shows the settings that you can adjust when you select Japanese Timing as the Overtime sytem.

This is how it works:

- The player gets a number of periods each of which lasts the same time. As an example, the illustration shows 30 periods, each of which lasts 1 minute.
- If the player manages to make a move within a period, no time is deducted - when the player's next turn begins, they again start with the full period length. In the example from the illustration, if the player makes a move within 40 seconds, on their next turn they 
- If the player takes longer than a period to make a move, one or more period is deducted.

does not manage to make a move within a period, a period is deducted.
- x
, the  . A new period begins and the player again must make the same number of moves during that period.
- x
- x
- The player must make a move during that time period. The illustration shows 25 moves as an example.
- If the player runs out of time before having made the required number of moves, the player loses the game.
- If the player manages to make the required number of moves, a new period begins and the player again must make the same number of moves during that period.
- Any unused time is discarded. In the example from the illustration, if the player made 25 minutes within 9 minutes and 30 seconds, the unused 30 seconds are discarded and the next period again starts with 10 minutes.


- one gets a number of time periods of same size (e.g. 480 one-minute periods),
- time used for each move only deducts as many periods as fit into this time (possibly none),
- and counting seconds is done when one's number of periods is equal or less than a certain number (typically 10). 

<--->

{{< img name="timed-play-japanese-timing-settings" size="origin" lazy=false >}}

{{< /columns >}}


For more details on Japanese Timing, see [Sensei's Library](https://senseis.xmp.net/?JapaneseTiming).

https://senseis.xmp.net/?Byoyomi

### Fischer Timing

Fischer Timing is a time system named after Bobby Fischer. It includes the following rules:

- one gets an amount of time (say, 5 minutes),
- time used for each move is deducted,
- and an extra amount of time (say, 15 seconds) is added after each move. 


For more details, see [Sensei's Library](https://senseis.xmp.net/?FischerTiming).

### Steady Average Timing

Steady Average Timing is the time system where

- one gets an initial period of time,
- time used for each move is deducted,
- and an extra period of time is added after exactly N moves were made in a period. 

For more details, see [Sensei's Library](https://senseis.xmp.net/?SteadyAverageTiming).

### Total Average Timing

Total Average Timing is the time system where

- one gets an initial period of time,
- time used for each move is deducted,
- and an extra period of time is added after each N-th move. 

For more details, see [Sensei's Library](https://senseis.xmp.net/?TotalAverageTiming).

### Comparison

```
                                                                    Round down
                        Time periods   Duration   Number of moves   time after   Extra time
                        <p>            <d>        <n>               <n> moves    <e>
-------------------------------------------------------------------------------------------
Absolute Timing         1              Arbitrary  Unlimited         No           -
Canadian Timing         1              Arbitrary  Arbitrary         Yes          -
Japanese Timing         Arbitrary      Arbitrary  1                 Yes          -
Steady Average Timing   1              Arbitrary  Arbitrary         No           -
Fischer Timing          1              Arbitrary  1                 No           Arbitrary
Total Average Timing    1              Arbitrary  Arbitrary         No           <d>
```

- Explain how each time system works
- Provide links to Sensei's Library

## Sliders

- Explain minimum/maximum values of sliders
- Explain how the time sliders are non-linear

## Clock views

- When you start the game, the Play area shows player clocks => Screenshot with two clock views
- The clock starts running immediately => Green color marks the clock that is running
- Screenshot after black played a move => now the white player's clock is started
- game info screen shows the time settings with which the game was started

## Suspending the clock

- You can suspend the clock by tapping on it => screenshot with blue color. here comes the explanation about the relaxed game.
- if you don't like this, "Tap suspends clock" can be disabled in the user preferences
- If you don't like that the clock starts automatically, there are user preferences that allow you to control for 3 different scenarios when the clock should/should not start automatically
- The app suspends the clock if something happens that prevents the player from playing their move
  - send the app to the background
  - phone call
  - game action menu
  - game info screen
  - another tab
  - move suggestion animation
  - a play mode that is not "play"
- auto-suspend cannot be disabled
- auto-suspend does not occur for the computer player, because it is always ready

## Running out of time

- Screenshot what the Status view and the clock shows
- Reference to game result
- How to undo

## Saving and loading

- Saving the game records both the time settings with which the game was started, and the elapsed times and number of moves for each move
- Loading the game restores these things. You cannot choose different time settings than the ones which are in the saved game.
- If the saved game comes from an external source, the app may not understand the time settings => Custom

## Navigating to old nodes

- Sets clocks to the state after the move in the node was played
- The current time data is lost
- Clock state started?
- Annotation page 3 shows the time data of the player who made the move **after** the move. if no time data exists (e.g. root node) => no time data

## How the computer player uses its time

- The normal setting is not used
- Instead explain how main time is used (complicated), and overtime

## Invalid time data

- Can occur only when you load a game from an external source
- When a custom time system is in force then time data cannot be interpreted and is considered "invalid"
- Otherwise the app checks time data for validity
- There are 3 levels of strictness. the default is basic; a change only applies to the next game
- when time data in a node is not valid, this is shown in the clock view; TODO: does tapping the clock view call up the detail view?
- annotation page 3 also has the information, plus an info button to call up a detail view

## This and that

- Clock view when time exceeds maximum

## TODO xxx notes

```
General

- Most of the existing screenshots should not need to be re-made because Timed Play is optional. Exceptions:
  - Entry page where all elements are shown in one screenshot
  - Annotation view screenshots => we now have 3 pages
- Create a new section for "Timed play" and use screenshots with the new elements there


New game screen

- Explain all the options
- No timed play
- Timed play with either only main time, or only period-bsaed time system, or both
- Main time => Sudden death
- Period-bsaed time systems: Explain every single one of them, possibly with links to Sensei's Library
- Time selected via slider => slider is not linear


Load game

- You can't choose a time system because in a game with timed play each move needs to have a record with time data, at least how much time is left after the move => either the saved data has that information or it does not, but if the app were to let you choose timed play for saved data without the information, it would not make sense
- The way how the time system used is recorded is not standardized. The app understands a few encoding ways => explain which ones
- If the app encounters an unknown time system, it will not show any time data because it does not know how to interpret


Timed play

- Show the two player clocks
- User can pause the clock of the player whose turn it is => Can be disabled in the settings
  - The goal is to let the user play a timed game, but in a relaxed non-tournament, non-competitive environment where the user has the freedom to suspend or stop the clock whenever a distraction occurs or they choose to do so for any other reason. In some cases where it makes sense the app automatically suspends or stops the clock, e.g. when the app is sent to the background (= distraction), or when the user performs an action that would prevent them from playing a move in time, or when they change the current node so that the game situation is no longer the same.
- The app automatically pauses the clock if the current player is human but the user is not able to play for some reason (enumerate reasons). The app does not pause the clock if it's the computer player's turn, or the computer player is generating a move on behalf of the human player (because the computer can make the move even if the board is not accessible).
- If user selects a node, the clocks are reset to the situation at that node, i.e. to the time left after each player's most recent move. If the clock was running before the node change, it remains running but uses the new node's time data. If the clock was suspended before the node change, it remains suspended. If the clock was stopped before the node change (because the game has ended), it remains stopped. If some time was already spent in the previously selected node, that time is lost.
- When a player loses on time, you can undo this in the "More game actions" menu. The time left is then reset to the time left after the most recent move of that player. If no move was played, then the remaining time is taken from the time system.
- To see the current time systems, call up the "Game info" screen > tab "Game" > section "Time settings".
- When the computer player is playing, either for itself or on behalf of a human player, it uses the following calculations to determine how much time it is allowed to use
  - Main time: TODO describe the relatively complicated system that Fuego uses
  - For overtime: The remaining time divided by the number of moves left to play in the current period => Make examples for each time system.
- When a game is saved to the archive, time that has elapsed while thinking about the next move is not recorded, i.e. when the game is loaded again the clock starts running from the time that was still left when the last move was played.


When does the app suspend the clock automatically?

- Whenever the **user** is blocked from playing a move in time
- The app is suspended (= sent to the background)
- The board is not visible at all, or only partially visible
  - Game info view
  - Game actions menu
  - A tab that is not the Play tab
  - Save game dialog
  - New game dialog
- A long-running function blocks the user from playing a move in time
  - Computer play for me / computer give me a hint
  - Calculate influence
- The board is visible but in a different mode
  - Scoring
  - Setup
  - Markup
- Possibly more - check implementation


Invalid time data

- Valid time data is required to guarantee that the app's time-related functions work properly

- When a game is loaded from the archive that comes from an external source, the data in the game file may contain inconsistencies.
- The app detects such inconsistencies and shows them to the user when a given node is selected.
- The user can select how thorough the app should be when it does checks. The default is "Basic".
- If the app finds a problem with the time settings, it does not check the time data in individual nodes any more - all nodes are considered to contain invalid time data => The information shown is the same for all nodes. If the user does not want to see the same information over and over, they can disable this in the settings.


Node time data

- Describe that there is now a third page in the annotation view
- Possibly say something about why we don't show an icon in the board position cell
  - Time data is not considered special enough to show an "info" indicator,
    so we don't check for the presence of GoNodeTimeData.
  - In a game without timed play, no time data is expected to be present. If
    it ***IS*** present then that is remarkable because the SGF authoring
    program did something strange, but for the user it is hardly of any
    interest.
  - In a game with timed play, time data is expected to be present in
    ***EVERY*** node that contains a move. Showing the "info" indicator
    would therefore become meaningless and obscure the presence of things
    that are of real interest to the user.
  - For the same reason why we don't show an info icon, we also don't introduce a new icon, e.g. a clock icon


Other

- Change description of fuegoMaxThinkingTime: Remark that this only has an effect if the game does not use timed play.
```
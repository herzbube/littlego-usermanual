---
title: Start a new game
weight: 100
resources:
  - name: new-game-human-vs-computer
    src: "new-game-human-vs-computer.svg"
    title: New game screen, human vs. computer game
  - name: new-game-human-vs-human
    src: "new-game-human-vs-human.png"
    title: New game screen, human vs. human game
  - name: new-game-computer-vs-computer
    src: "new-game-computer-vs-computer.png"
    title: New game screen, computer vs. computer game
  - name: handicap
    src: "handicap.svg"
    title: New game screen, with handicap option
  - name: advanced-settings
    src: "advanced-settings.png"
    title: New game screen, advanced settings
---

{{< toc >}}

To start a new game, tap the Menu {{< icon "menu-hamburger" >}} toolbar button, then select the "New game" menu item. This calls up the "New game" screen.

{{< expand "References" >}}
- [Button reference]({{< relref "../../ui-basics/play-toolbar" >}})
- [Menu reference]({{< relref "../../ui-basics/play-menu" >}})
{{< /expand >}}

The "New game" screen is one of the most important screens of the app, because
here you can define the characteristics of the games you want to play. Notable
settings are:

- The board size.
- The ruleset you want to use.
- Whether you want to play an even game or a game with handicap.

{{< hint type=important >}}
Once you start the game, its settings can no longer be changed.
{{< /hint >}}

Changes you make in the "New game" screen are remembered so that when you
start the next new game you will be presented with the same settings that you
used for your last game.

As a convenient shortcut you can also select the "New game - rematch" item from the menu that pops up when you tap the Menu {{< icon "menu-hamburger" >}} toolbar button. This immediately starts a new game with the remembered settings without showing the "New game" screen at all.

## User interface elements

The following image illustrates the user interface elements that can be found on the "New game" screen.

{{< columns size=regular >}}

{{< img name="new-game-human-vs-computer" size="origin" lazy=false >}}

Tap/click to see how the screen looks like for starting a human vs. human game, or a computer vs. computer game.

{{< expand "Human vs. human game" >}}
{{< img name="new-game-human-vs-human" size="origin" lazy=false >}}
{{< /expand >}}

{{< expand "Computer vs. computer game" >}}
{{< img name="new-game-computer-vs-computer" size="origin" lazy=false >}}
{{< /expand >}}

<--->

1. The "Cancel" button. Tapping this button leaves the screen without starting a new game.
1. The "Done" button. Tapping this button confirms your choices and starts the new game.
1. Tapping one of the segments selects which type of game you want to start: <br/><span class="littlego-icon">{{< icon "human-vs-computer" >}}</span> : Human vs. computer game. <br/><span class="littlego-icon">{{< icon "human-vs-human" >}}</span> : Human vs. human game. <br/><span class="littlego-icon">{{< icon "computer-vs-computer" >}}</span> : Computer vs. computer game.
1. In this area you select who is playing and whether they play black or white. Because the image shows the screen for a Human vs. computer {{< icon "human-vs-computer" >}} game you have to select a human player and a computer player. The players that are available for selection here are managed in the Settings {{< icon "settings" >}} user interface area. [Read more]({{< relref "../../settings/players" >}}).
1. Here you can select the board size. Available sizes are 7x7, 9x9, 11x11, 13x13, 15x15, 17x17 and 19x19.
1. This item lets you select the ruleset with which you want to play. Read the [Ruleset section](#ruleset) further down on this page for details.
1. With this toggle option you choose whether or not you want to play with handicap. Read the [Handicap section](#handicap) further down on this page for details.
1. Tapping the "Advanced settings" item pops up another screen where you can customize individual settings that are normally determined by a ruleset. Read the [Advanced Settings section](#advanced-settings) further down on this page for details.

{{< /columns >}}

## Ruleset

A ruleset represents a collection of rules that apply to the new game. By selecting a ruleset you are effectively changing many rules with a single tap. This is merely a convenience - if you prefer you can also change each individual rule by calling up the [Advanced Settings](#advanced-settings) screen.

{{< hint type=important >}}
It is strongly recommended that you play with a ruleset that uses area scoring, because the computer player (Fuego) does not properly support territory scoring. [Read more]({{< relref "../scoring#why-area-scoring-is-the-default" >}}).
{{< /hint >}}

The app comes with its own ruleset, labeled "Little Go", which is the default ruleset after you launch the app for the first time. If you tweak the rules in the [Advanced Settings](#advanced-settings) screen so that they are no longer recognized as one of the predefined rulesets, the app will show "Custom" as the ruleset name.

The following table shows how each ruleset maps to the individual rules.

| | AGA | IGS (Pandanet) | Chinese | Japanese | Little Go |
| ---  | --- | --- | --- | --- | --- |
| [Ko rule](#ko-rule) | Situational superko | Simple ko | Positional superko | Simple ko | Simple ko |
| [Scoring system](#scoring-system) | Area scoring | Territory scoring | Area scoring | Territory scoring | Area scoring |
| [Life & death settling rule](#life--death-settling-rule) | 2 passes | 3 passes | 2 passes | 2 passes | 2 passes |
| [Dispute resolution rule](#dispute-resolution-rule) | Alternating play | Alternating play | Non-alternating play | Non-alternating play | Alternating play |
| [Four passes rule](#four-passes-rule) | End game | No special meaning | No special meaning | No special meaning | No special meaning |


## Handicap

By tapping the "Even game" switch you toggle between

- An even game where both players have the same playing strength,
- And a game with handicap where the two players have different playing strengths.

When the "Even game" switch is off you will see a new option that lets you select the handicap:

{{< img name="handicap" size="origin" lazy=false >}}

In a game with handicap the stronger player plays white and the weaker player plays black. The weaker player starts the game with the selected number of (black) handicap stones.

The default handicap is 2 stones, but you can select up to 9 handicap stones. Currently it is not possible to freely place the handicap stones, they are
automatically placed by the app on fixed intersections.

{{< hint type=note >}}
There is no handicap 1. Instead of giving a handicap of 1, white should forego komi (i.e. set komi to 0 or 0.5) and let black play first. This way black benefits from the absence of komi and is still able to freely choose his or her first move.
{{< /hint >}}


## Advanced settings

The following image shows the options that you can adjust on the "Advanced settings" screen.

{{< hint type=warning >}}
Choices you make on this screen are overwritten if you select a ruleset later on.
{{< /hint >}}


{{< columns size=regular >}}

{{< img name="advanced-settings" size="origin" lazy=false >}}

<--->

The first few settings determine assorted Go rules.

- Tapping the "Komi" setting lets you select from a number of predefined useful komi values. [Read more](#komi).
- Tapping the "Ko rule" setting lets you select between simple ko and superko ko rules. [Read more](#ko-rule).
- Tapping the "Scoring system" setting lets you select between area scoring and territory scoring. [Read more](#scoring-system).

The last three settings determine the "End of game" rules, i.e. rules which define how procedures at the end of the game work.

- The "Life and death settling" setting lets you select the number of pass moves after which a game ends and enters the life & death settling phase. [Read more](#life--death-settling-rule).
- The "Dispute resolution" setting lets you select how to proceed with the game if a score cannot be determined. [Read more](#dispute-resolution-rule).
- The "Four passes" setting lets you select what should happen when four consecutive pass moves are played. [Read more](#four-passes-rule).

{{< /columns >}}

### Komi

{{< hint type=tip title="Go know-how" >}}
Komi is a numeric value that is added to the white player's score at the end of the game. Komi is given to the white player as a bonus to compensate for the black player's advantage of having the first move. In an even game, when area scoring is used komi is usually 7½, when territory scoring is used komi is usually 6½.
{{< /hint >}}

Komi is hidden away on the "Advanced settings" screen because it is usually automatically adjusted by the app based on other choices made on the "New game" screen. Although you can adjust it manually, you will find that the app changes the komi value you selected to something else in the following situations:

- Selecting a scoring system sets a default komi suitable for the scoring system (7½ for area scoring, 6½ for territory scoring). Selecting a ruleset that changes the scoring system has the same effect as changing the scoring system itself.
- Selecting a handicap sets komi to ½. Selecting no handicap sets komi back to the current scoring system's default. While a handicap is selected, changing the scoring system has no effect on komi.

{{< hint type=note >}}
It is **strongly** recommended to leave the komi setting alone and let the app manage it automatically. When the two players are not of equal strength it is recommended that the stronger player give the weaker player [a handicap](#handicap) instead of adjusting komi.

Also note that when handicap is given and area scoring is used the app will automatically add 1 compensation point per handicap stone to white's score, so using any komi other than 0 or 0.5 points in a handicap game is likely to gravely skew the final score.
{{< /hint >}}

If you *do* decide to adjust komi, then the app offers you the following choices:

- For a game with handicap: 0 or 0.5 points. One of these values can also be used instead of giving 1 handicap stone, in other words if the two players are of *almost* equal strength.
- For a game without handicap: A value between 5 and 8 points, with .5 points in between.

It is recommended to use a .5 value to avoid draws.

### Ko rule

{{< hint type=tip title="Go know-how" >}}
Ko is a Japanese go term that, in its most general usage, refers to all sorts of moves that repeat a previous board position and that, if repeated indefinitely, could prevent the game from ending. The ko rule that is in effect during a game forbids moves that could create such a situation.
{{< /hint >}}

The app supports and lets you choose between the following ko rules:

- Simple ko, also known as "basic ko". This rule prohibits capturing moves that restore the same board position that existed **immediately** before the previous capturing move was played. An example diagram for this can be found on the [Go rules]({{< relref "../../appendix/go-rules.html#no-repetition-ko-rule" >}}) page.
- Positional superko. When this rule is in effect a player may not place a stone that recreates **any** board position that existed earlier in the game.
- Situational superko. Similar to positional superko, with the difference that only plays are forbidden that recreate an earlier board position **with the same player to move**.

{{< hint type=note >}}
Pass moves do not contribute to ko and are therefore never forbidden.
{{< /hint >}}

If you want to know more about simple ko, superko, or repeating cycles in general, then [Sensei's Library](https://senseis.xmp.net/?Ko) is your friend.

### Scoring system

The app lets you choose between two scoring systems to determine the final score after the game ends:

- Area scoring
- Territory scoring

A summary of how the two scoring system work can be found on the [Scoring]({{< relref "../scoring#area-scoring-and-territory-scoring-revisited" >}}) page of this manual.

{{< hint type=important >}}
It is strongly recommended that you play with area scoring, because the computer player (Fuego) does not properly support territory scoring. [Read more]({{< relref "../scoring#why-area-scoring-is-the-default" >}}).
{{< /hint >}}

### Life & Death Settling rule 

The Life & Death Settling rule lets you select the number of pass moves after which normal play should end and the game should enter the life & death settling phase (the goal of which is to determine a final score).

The life & death settling phase begins with an attempt to agree on which stones on the board are alive and which stones are dead. If players cannot agree they must resume the game and continue playing to settle any disputes. This cycle is repeated until all disputes have been resolved.

The number of pass moves that you select for the Life & Death Settling rule has an effect on how the game is resumed to settle disputes:

- 2 pass moves: Play can be resumed to settle life & death disputes without discarding any moves.
- 3 pass moves: The third pass move must be discarded in order to resume play. This option is used to implement the IGS ruleset.
                
### Dispute Resolution rule

If in the life & death settling phase players cannot agree on which stones are dead and which stones are alive, players must resume play to resolve the dispute.

The option you select for the Dispute Resolution rule decides who plays first:

- Alternating play: The player who plays first is the opponent of the last player to pass.
- Non-alternating play: Either player is allowed to play first.

### Four Passes rule

If players resume play in order to resolve a life & death dispute, but neither player wants to play and both players pass a second time, the result are 4 consecutive pass moves.

The option you select for the Four Passes rule decides what this should mean:

- No special meaning: The 4 consecutive pass moves have no special meaning and the life & death settling phase continues into the next cycle.
- End immediately: The game ends immediately after the fourth pass move, with all stones on the board deemed **alive**! This option is used to implement the AGA ruleset.

{{< hint type=note >}}
The purpose of the "End immediately" option is to avoid the situation where a game does not end because players cannot agree on which stones are dead/alive, but neither player wants to play first to start resolving the dispute.
{{< /hint >}}

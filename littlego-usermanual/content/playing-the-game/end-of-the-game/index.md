---
title: End of the game 
weight: 400
---

{{< toc >}}

## Ways to end the game

### Resigning

You can resign when it is your turn to play by selecting "Resign" from the menu that pops up when you tap the Menu {{< icon "menu-hamburger" >}} button.

When a player resigns, Scoring {{< icon "scoring" >}} mode is not activated automatically because it is clear that the resigning player has lost the game. If you like you can tap the Scoring {{< icon "scoring" >}} button to manually activate Scoring {{< icon "scoring" >}} mode. See the [Scoring]({{< relref "../settings/players" >}}) section of this manual for more information on how scoring works.

You can undo the decision to resign by selecting "Undo resign" from the menu that pops up when you tap the Menu {{< icon "menu-hamburger" >}} button. The decision to resign is also undone automatically when you discard the last move.

### Ending the game by passing

One of the game rules that you select when you start a new game determines whether the game will end after two or after three consecutive pass moves. Typically you choose the number by [selecting a ruleset]({{< relref "start-a-new-game#ruleset" >}}) in the "New Game" screen.

- IGS (Pandanet) ruleset: The game ends after three consecutive pass moves.
- All other rulesets: The game ends after two consecutive pass moves.

You can also [manually choose]({{< relref "start-a-new-game#life--death-settling-rule" >}}) the number in the "New Game" screen, under "Advanced Settings > Life & death settling after ...".

When the game ends after two or three consecutive pass moves, the app automatically activates Scoring {{< icon "scoring" >}} mode. See the [Scoring]({{< relref "../settings/players" >}}) section of this manual for more information on how scoring works.

You can disable the automatic activation of Scoring {{< icon "scoring" >}} mode in the Settings {{< icon "settings" >}} area of the app under "Scoring > Auto scoring / resuming play". When automatic activation is disabled you have to manually activate Scoring {{< icon "scoring" >}} mode by tapping the Scoring {{< icon "scoring" >}} button.

## Resuming play

### Resuming play after a game has ended by passing

When a game ends by two or three consecutive pass moves, the life & death settling phase begins where you and your opponent must agree on the life & death status of all stones on the board. If you and your opponent cannot agree on the life & death status of some stones, you must resume play and resolve the dispute by playing out the situation in question.

### Resuming play after three pass moves

When the game has ended with three consecutive pass moves, the procedure to resume play is the same as when you play on IGS (Pandanet): You resume play by discarding the third pass move. This is like the "undo" function" on IGS (Pandanet).

The player to play first is the opponent of the last player to pass. In other words: The game continues with normal alternating play.

### Resuming play after two pass moves

When the game has ended with two consecutive pass moves, you can resume play by two slightly different methods:

- Automatically resume play: Tap the Play {{< icon "gogrid2x2" >}} button. The main purpose of this button is to deactivate Scoring {{< icon "scoring" >}} mode and return you to play mode. A convenient and natural side effect of the button, however, is that it also automatically resumes play. You can disable this automatism in the Settings {{< icon "settings" >}} area of the app under "Scoring > Auto scoring / resuming play". In that case, tapping the Play {{< icon "gogrid2x2" >}} button merely switches from Scoring {{< icon "scoring" >}} mode back to Play {{< icon "gogrid2x2" >}} mode and you have to manually resume play.
- Manually resume play: Select the "Resume play" item from the menu that pops up when you tap the Menu {{< icon "menu-hamburger" >}} button. If Scoring {{< icon "scoring" >}} mode is active, selecting "Resume play" will deactivate it and return you to Play {{< icon "gogrid2x2" >}} mode.

The player to play first depends on the "Dispute Resolution" game rule that you selected when you started the game. Typically you choose the rule's setting by [selecting a ruleset]({{< relref "start-a-new-game#ruleset" >}}) in the "New Game" screen.

- The Chinese and Japanese rulesets allow non-alternating play.
- All other rulesets enforce alternating play (i.e. the player to play first is the opponent of the last player to pass).

You can also [manually choose]({{< relref "start-a-new-game#dispute-resolution-rule" >}}) the rule's setting in the "New Game" screen, under "Advanced Settings > Dispute resolution".

**Only if the game rules allow non-alternating play:** Immediately after you resume play, the app presents you with a choice which side (black or white) is to play first. If you make the wrong choice, you can tap the Menu {{< icon "menu-hamburger" >}} button and select the menu item "Set &lt;side&gt; to move" to revert your decision. This menu item disappears once the first move has been made.

## Other game-ending scenarios

When you load an SGF file that you obtained from an external source you may see the app displaying that a player wins on time, or wins by forfeit. The app supports displaying these game results to properly show you what is stored in an SGF file.

The app itself has no function for ending a game due to running out of time because it does not support timed play. Also the app has no concept for forfeiting games because it is not designed to be used in tournaments or similar serious environments.

You can undo a game-ending timeout or forfeit from the menu that pops up when you tap the Menu {{< icon "menu-hamburger" >}} button, exactly the same as you would do to undo the decision to resign. The menu items are named "Undo timeout" and "Undo forfeit", respectively.

A game-ending event is also undone automatically when you discard the last move.

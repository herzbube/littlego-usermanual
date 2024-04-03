---
title: Troubleshooting
weight: 100
---

{{< toc >}}

## Computer player making illegal moves

It is possible that the app and the computer player (i.e. Fuego) disagree on when a move is legal. This happens when the app and Fuego get out of sync, usually due to some bug in the app. If such a situation occurs, the app will ask you to [submit a bug report]({{< relref "../bug-reports" >}}), or to enable the collecting of logging data (so that when the problem occurs the next time, the bug report can be sent with useful information about the steps that led up to the problem).

Regardless of whether you agree to the app's suggestions, the game in progress will then be automatically saved to the archive and a new game will be started to bring the app back into a stable state. To continue playing you can try to load the saved game from [the archive]({{< relref "../../game-organization/game-archive" >}}).
 
## I can/cannot play X - isn't this against the game rules?

You may have found a bug. Don't hesitate to email me with [a bug report]({{< relref "../bug-reports" >}}).

Meanwhile, if you are stuck in an impossible situation (e.g. you cannot capture a stone), you can try to work around the problem by [saving the game]({{< relref "../../game-organization/game-archive#saving-a-game" >}}) that is currently in progress, then reloading the game you just saved. Loading a saved game is a generally useful strategy to bring the app back into a sane state whenever the app behaves buggy.

## Crash after zooming the board

If the app crashes after you zoom the board it is likely that your device does not have enough memory to support both a fully zoomed board AND the computer player's memory requirements. If this happens, you probably have increased the computer player's [Maximum memory]({{< relref "../../settings/computer-player#maximum-memory" >}}) setting and should try to reduce that number again to a safe level.

## I cannot load a game, the game is reported to contain errors

The app was not designed to be a general purpose SGF file processor/editor, so it is perfectly possible that an SGF file which you imported from an external source may contain data that the app does not understand. For instance, it is not possible (and probably will never be) to load a game with a board that is larger than 19x19.

If you believe that the app should be able to load one of your SGF game files, then please email me with [a bug report]({{< relref "../bug-reports" >}}) and attach the SGF file in question.

## File sharing changes do not update the archive

Since iOS 5, if you add or remove files via [file sharing]({{< relref "../../game-organization/game-archive#file-sharing" >}}), the screen in the Archive {{< icon "archive" >}} area of the app does not update automatically. This is a known problem for which a simple workaround exists: Temporarily lock the device, then unlock it again; the list of archived games should now be up to date.

## The computer player plays stupid moves during the end game

The computer player is not very good at calculating the final score on its own. One consequence of this is that you must assist in determining dead stones during scoring. Another consequence is that the computer player is not usually passing early during the end game - it stubbornly keeps on playing far longer than a human player would. If you are playing with area scoring rules, this usually does not affect the final score and thus is merely annoying. If you are playing with territory scoring rules, however, the computer player may lose a game that it would have won with area scoring rules. In some cases the computer player may even resign because its automated territory scoring calculations are incorrect.

For these reasons, you should try to play with area scoring rules. That's also why the app uses area scoring rules by default. To change the scoring rules you have to [start a new game]({{< relref "../../playing-the-game/start-a-new-game" >}}).

---
title: FAQ
weight: 100
---

{{< toc >}}

## How do I change the board size?

You need to start a new game. See the next question.

## How do I start a new game?

1. Go to the Play {{< icon "gogrid2x2" >}} area of the app. [Read more]({{< relref "../../ui-basics/tab-bar#list-of-ui-areas" >}}) about user interface areas.
1. Tap the Menu {{< icon "menu-hamburger" >}} button. [Read more]({{< relref "../../ui-basics/play-menu" >}}) about the menu.
1. Select "New game" from the menu that appears. [Read more]({{< relref "../../playing-the-game/start-a-new-game" >}}) about the "New game" screen.

## How can I pass / play a pass move?

Tap the button with the "three dots" icon: <span class="littlego-icon">{{< icon "pass" >}}</span>.

## What are the functions of all those buttons?

[This page]({{< relref "../../ui-basics/play-toolbar" >}}) provides an overview of how buttons are organized, as well as a full reference of all buttons that exist in the Play {{< icon "gogrid2x2" >}} area of the app.

In addition the [How to play]({{< relref "../../playing-the-game/how-to-play" >}}) page provides a useful overview of how some buttons work from a functional point of view.

## The computer is too strong / too weak, what can I do?

When you [start a new game]({{< relref "../../playing-the-game/start-a-new-game" >}}) you can select which computer player to play against. The first thing you can do is to select a weaker computer player from the list.

The second thing you can do is, you can edit the settings of a computer player
to make it weaker.

1. In the Play {{< icon "gogrid2x2" >}} area of the app, tap the Game Info {{< icon "game-info" >}} button to find out which computer player you are playing against (select the "Game" segment then scroll down to the section titled "Players" to find this information).
1. Tap the computer player's entry. This will take you directly to a screen where you can edit the player's settings.
1. Tap on "Playing strength", select a new value, then tap "Done".
1. Tap "Done" again to dismiss the "Edit player" screen. The new playing strength will immediately take effect.

In step 3, you can instead tap "Advanced configuration" if you want to tweak individual computer player settings. Consult [The computer player]({{< relref "../../settings/computer-player" >}}) page to learn about the meaning of each setting, especially the section [Limiting the computer’s playing strength]({{< relref "../../settings/computer-player#limiting-the-computers-playing-strength" >}}).

## Player influence is not displayed, or is completely wrong, what can I do?

Tap the Menu {{< icon "menu-hamburger" >}} button and select "Update player influence" from the menu that pops up.

If you don't see this menu entry, you need to enable "Display player influence" in the Settings {{< icon "settings" >}} area of the app under "Display settings".

If this setting is already enabled, then you are not in Play {{< icon "gogrid2x2" >}} mode - player influence can be seen only when this mode is active. Tap the Play {{< icon "gogrid2x2" >}} button to activate Play {{< icon "gogrid2x2" >}} mode. If you still don't see player influence, select the "Update player influence" menu entry mentioned above.

Also read the [Player influence]({{< relref "../../other-features/player-influence" >}}) page to learn about important background information.

## Move numbers / coordinate labels are not displayed even though they are enabled in the user preferences

The app automatically calculates the font size that is required to display move numbers and coordinate labels. The font size depends on the board size (a bigger board means a smaller font) and the amount of space available for drawing the board (a smaller screen means a smaller font).

If as a result of these calculations the font becomes too small, you will no longer be able to read move numbers and coordinate labels. The app in this case decides that it is better to not display those items at all, and to use the space thus gained for drawing a board that is slightly larger.

To still see move numbers and coordinate labels you just have to zoom the board sufficiently. Once the zoom scale has reached a certain degree, things will automatically start to show up.

## Markup labels are not displayed

See previous question.

## What is an "Auto-created player"?

When the app launches, it automatically starts a game with those two players that it remembers were playing last time when the app was active. If for any reason one or both of those players no longer exist, the app will try to recover by automatically creating one or two new players. Players created in this way get the name "Auto-created player" to give you a hint what happened.

In practice, you should never see an auto-created player because that would indicate a bug somewhere in the application. However, if you <em>do</em> see such a player, and you know how you managed to convince the app to create it, please let me know so that I can fix the problem.

---
title: Players
weight: 100
resources:
  - name: players
    src: "players.svg"
    title: Players screen, with pre-defined players
  - name: edit-human-player
    src: "edit-human-player.jpg"
    title: Edit player screen, editing a human player
---

Go is a game for two players. Whenever you start a new game the game requires you to choose two players from the list of existing players. Players are managed in the Settings {{< icon "settings" >}} area of the app under "Players".

{{< toc >}}

## The "Players" settings screen

There are two types of players: Human players and computer players. The app comes with a set of pre-defined players, which you can see in the following illustration.

{{< columns size=regular >}}

{{< img name="players" size="origin" lazy=false >}}

<--->

1. Tapping the "Edit" button shows helpful icons that indicate how to create new players and delete existing players, although you can also perform these actions without the icons.
1. This section lists all human players that currently exist, in the order in which they were created.
1. This section lists all computer players that currently exist, in the order in which they were created.
1. This section shows a special computer player that operates in the background during human vs. human games whenever the computer's assistance is needed (e.g. to calculate a move upon request). [Read more]({{< relref "computer-player#the-background-computer-player" >}}).
1. The "Reset to defaults" button discards **all** currently existing player definitions and resets everything to the pre-defined players with which the app is installed. When you tap the button the app will ask for confirmaton.

{{< /columns >}}

Tapping a player's entry calls up the "Edit player" screen with which you can edit the player's characteristics.

To delete a player you simply swipe left on the player entry.

To create a new player you tap the "Add new human player" button or "Add new computer player" button (in section ② or ③, respectively, in the illustration above).

{{< hint type=note >}}
It is not possible to delete a player that is currently participating in a game. It is also not possible to delete the background computer player (section ④ in the illustration above).
{{< /hint >}}

## Human players

The app comes with one pre-defined human player named "Anonymous", intended to play against one of the pre-defined computer players. You are invited to change the player name to your name to give it a more personal touch.

When you want to play against another human you need to create a second human player.

{{< columns size=regular >}}

{{< img name="edit-human-player" size="origin" lazy=false >}}

<--->

In the "Edit player" screen you can change a player's characteristics.

As of now the only characteristics of a human player is the name used to identify them.

You can toggle the "Human player" switch to turn the player into a computer player. When you do this a number of new settings appear with which you can tune the computer player's playing behaviour.

{{< /columns >}}

## Computer players

The app comes with several pre-defined computer players which differ in their playing strength. All computer players are named "Fuego" because that is the name of the computer Go engine used internally by the app.

When you launch the app for the first time it starts a human vs. computer game where the computer player with the weakest playing strength is used ("Fuego (weak)").

A computer player has *many* settings with which you can tune its playing behaviour. They are explained in detail in the [Computer Player]({{< relref "computer-player" >}}) section of this manual.

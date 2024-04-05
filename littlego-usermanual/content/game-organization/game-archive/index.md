---
title: The game archive
weight: 300
resources:
  - name: game-archive
    src: "game-archive.svg"
    title: The game archive
  - name: game-archive-entry-details
    src: "game-archive-entry-details.svg"
    title: Detail screen showing the content of an SGF file
---

The Archive {{< icon "archive" >}} area of the app is where you manage your saved games, or games imported from external sources. You activate the Archive {{< icon "archive" >}} area of the app via the [tab bar]({{< relref "../ui-basics/tab-bar" >}}) at the bottom of the screen.

{{< hint type=info >}}
The app uses the SGF format to read and write Go games. SGF files are text files. For the app to recognize an SGF file it must have the `.sgf` file extension. Read the [Smart Game Format (SGF)]({{< relref "../technical-pages/sgf" >}}) page for more technical information.
{{< /hint >}}

{{< toc >}}

## Managing the archive

The Archive {{< icon "archive" >}} area of the app displays a list of all the SGF files that you have currently stored within the app. These SGF files are either games you [saved in the app](#saving-a-game), or SGF files that were transferred to the device via [file sharing](#file-sharing) or via [importing from an external application](#importing-sgf-files-from-other-applications) (e.g. Mail).

{{< columns size=regular >}}

{{< img name="game-archive" lazy=false >}}

<--->

1. Tap the "Edit" toolbar button if you want to delete one or more SGF file. A swipe-left gesture on the list item can also be used.
1. The list of SGF files. The list is alphabetically sorted. Tap an item to see details about the SGF file content or load a game that is stored in the SGF file.
1. Tap the "Delete all entries" button at the bottom of the screen to delete all game archive entries in one fell swoop. The app will ask for confirmation before it performs the delete. When you have many archive entries you need to scroll down to see the button.

{{< /columns >}}

## Content of an SGF file

When you tap an item in the game archive a screen is displayed that shows detail information about the content of the SGF file that is behind the item.

{{< columns size=regular >}}

{{< img name="game-archive-entry-details" lazy=false >}}

<--->

1. The "Share" button. Tap this to export the SGF file to an external application (e.g. Mail, DropBox, or another Go application that can import SGF files).
1. The SGF file name (excluding the `.sgf` file extension) and a timestamp indicating when the SGF file was saved last time. Tapping on the name pops up a screen where you can rename the SGF file.
1. Information indicating whether the SGF file contains irregularities or outright errors. See the [Smart Game Format (SGF)]({{< relref "../technical-pages/sgf#sgf-processing" >}}) page for an in-depth discussion of what the "Load result" item means and how an SGF file's data is processed when you tap an item in the game archive.
1. A section with a summary of the first game found in the SGF file. An SGF file can contain multiple games, so this section can appear multiple times. Each game will have its own summary section titled "Game &lt;n&gt;", where &lt;n&gt; indicates the number of the game within the SGF file. The summary is intended to contain enough information to distinguish the games within an SGF file from each other. **Note:** Most SGF files contain only a single game.
1. If the summary is not enough and you want to know more about the game you can tap the "Show details" item to call up a screen with all information about the game that is available in the SGF file.
1. Tap the "Load game" item at the bottom of a game's summary section to load that game and inspect its content on the game board in the Play {{< icon "gogrid2x2" >}} area of the app. The procedure to load the game is very similar to starting a new
game from scratch. The difference is that you cannot choose board size, komi or
handicap, as these parameters are part of the saved game.

{{< /columns >}}

## Failure to load SGF data

The app may not be able to load the SGF data in an SGF file if the file content does not conform to the SGF standard in some way. When this happens the app displays an item "No games available" instead of one or more sections titled "Game &lt;n&gt;".

If the problem is not too severe the app in addition displays a "Force loading" button that you can tap to load the SGF data in the SGF file despite the formatting issues.

See the [Smart Game Format (SGF)]({{< relref "../technical-pages/sgf#syntax-checking-settings" >}}) page for an in-depth discussion of how syntax checking works. If the failure to load the SGF data is related to the SGF file's text encoding then changing the app's [text encoding settings]({{< relref "../technical-pages/sgf#text-encoding-settings" >}}) may help overcome the problem.

## Saving a game

In the Play {{< icon "gogrid2x2" >}} area of the app you can save the game that is currently in progress by selecting the "Save game" item from the menu that pops up when you tap the Menu {{< icon "menu-hamburger" >}} button.

{{< hint type=tip >}}
You do not need to save the current game before you close the app. The app will save the current game automatically so that when you reopen the app you can continue playing where you left off.
{{< /hint >}}

After selecting the "Save game" menu item the "Save game" screen will pop up. Here you first enter a name for the saved game, then you tap the "Done" toolbar button to actually save the game.

If there already is a game saved under the name that you entered the app will inform you and ask for confirmation whether you want to overwrite the existing game.

{{< hint type=tip >}}
When you open the "Save game" screen the app will suggest a unique game name, i.e. a name for which no other game already exists in the archive, so that you can quickly tap "Done" and be ready to continue the game. The suggested game name is based on the names of the participating players, with a numeric suffix added for uniqueness. Example: "John vs. Jane 1".
{{< /hint >}}

## File sharing

You can transfer SGF files from the archive to your macOS computer, or vice versa, via file sharing on the computer.

1. Select the iOS device in the Finder.
1. Select the "Files" tab.
1. Scroll through the list of applications until you find the "Little Go" app.
1. Click the arrow to "open" the app's entry. You should now see the SGF files that you have stored in the app on this iOS device.
1. Use drag & drop to copy files to/from the iOS device.

SGF files copied to the iOS device will not automatically show up in the app's game archive. Use any one of the following workarounds to make the files appear.

- Temporarily lock the screen of your iOS device, then unlock it again.
- Switch to a different app, then switch back to Little Go.
- Activate the Home screen (which sends Little Go to the background), then re-activate Little Go.

## Importing SGF files from other applications

If you have an email message with an SGF file attachment, you can open that message in the Mail app on your device, then tap on the file attachment. Mail will offer a selection of the applications that can process the file. You should see Little Go among those applications. When you select Little Go the file will be imported into Little Go's archive.

If you have other applications that are capable of exporting SGF files (e.g. DropBox) you should be able to import those files into Little Go in a similar fashion as you did with Mail.

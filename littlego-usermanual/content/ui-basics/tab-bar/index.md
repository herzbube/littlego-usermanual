---
title: Tab bar at the bottom
weight: 100
resources:
  - name: tab-bar
    src: "tab-bar.svg"
    title: Tab bar showing all user interface areas of the app
  - name: tab-bar-edit
    src: "tab-bar-edit.svg"
    title: Screen for editing the tabs in the tab bar
---

{{< toc >}}

Little Go's user interface consists of several distinct areas. A tab bar at the bottom of the screen lets you navigate between those areas. Only one area can be visible at any given time.

The number of areas exceeds the available space in the tab bar even on the largest devices. The right-most tab therefore is always the "More" tab, which when activated shows a list of those areas that didn't fit on the tab bar.

## List of UI areas

The following screenshot is from an iPhone SE, showing all UI areas of the app at a glance.

{{< columns size=regular >}}

{{< img name="tab-bar" size="origin" lazy=false >}}

<--->

1. The Play {{< icon "gogrid2x2" >}} area. This is the main focus area of the app where you see the Go board and play the game.
1. The Settings {{< icon "settings" >}} area. Here you find many options for customizing the app's behaviour. [Read more]({{< relref "../../settings" >}}).
1. The Archive {{< icon "archive" >}} area. In this area you manage your saved games, or games imported from external sources. [Read more]({{< relref "../../game-organization/game-archive" >}}).
1. The Help {{< icon "help" >}} area contains the in-app user manual, i.e. the content you are reading now.
1. The "More" tab lists the user interface areas that did not fit on the tab bar. Tapping on a list entry calls up the user interface for that area in the same way as if it were a tab.
1. The Diagnostics {{< icon "diagnostics" >}} area. Here you find functionality that you will, hopefully, use only in rare cases: Submit bug reports, crash report settings, check on the communication with Fuego, etc. [Read more]({{< relref "../../diagnostics" >}}).
1. The About {{< icon "about" >}} area contains version and license information about the app and the software components and icons that were used to make the app.
1. The Source Code {{< icon "source-code" >}} area contains information where you can obtain the source of Little Go.
1. In the Licenses {{< icon "licenses" >}} area you can read the actual license texts of the software licenses that were mentioned in the "About" area.
1. In the Credits {{< icon "credits" >}} area you find acknowledgments of all project contributions and inspirations.
1. Finally, the Changelog {{< icon "changelog" >}} area contains an overview of what changed in each new version of Little Go.
1. Tapping the "Edit" button lets you change which UI areas you want to see in the tab bar. Continue reading for more information.

{{< /columns >}}

## How to edit the tab bar

Even on the smallest iPhones the tab bar always contains tabs for 4 UI areas, while the right-most tab is always reserved for the "More" tab. If you like you can change which of the areas are shown in the tab bar.

After you press the "Edit" button (#12 in the annotation list in the previous section) the app presents you with the following screen:

{{< columns size=regular >}}

{{< img name="tab-bar-edit" size="origin" lazy=false >}}

<--->

1. Drag one of the blue-tinted icons from the screen center towards the tab bar at the bottom. Release the dragged icon when you reach one of the existing tabs. The tab on which you dropped the icon will be replaced with the dragged icon. The tab which was replaced will now be available for dragging in the center area.
2. You can also use drag & drop to change the order in which tabs appear.
3. Tap the "Done" button when you are finished with editing the tab bar.

{{< /columns >}}

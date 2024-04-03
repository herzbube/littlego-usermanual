---
title: Reporting bugs
weight: 300
---

To report a bug, please send an email to herzbube@herzbube.ch that contains a description of the problem and, if possible, step-by-step instructions on how to reproduce it.

{{< hint type=info >}}
Bug reports without a minimal problem description are likely to be ignored.
{{< /hint >}}

For your convenience, in the Diagnostics {{< icon "diagnostics" >}} area of the app you will find a button labelled "Send a bug report". Tapping the button displays a pre-filled email view that you only need to supplement with your problem description before you can send off the report. You will notice that the email has a file attachment - [read more](#diagnostics-information-file) about this file.

{{< toc >}}

## Diagnostics information file

The file attached to the bug report email contains diagnostics information about the current state of the app and the game in progress. This information helps the developer to better diagnose problems that are hard to describe or reproduce. If you ever find that the app behaves badly from time to time, but not <em>all</em> the time, it will be most useful if you send a bug report (and thus generate a diagnostics information file) right then and there when you notice the problem.

{{< hint type=important >}}
You should also enable the [collecting of logging data](#collecting-logging-data) before you send the bug report.
{{< /hint >}}

The Diagnostics {{< icon "diagnostics" >}} area of the app also has a button, labeled "Generate diagnostics information", that lets you just generate the diagnostics information file without sending an email. This can be useful if your device is not capable of sending email, or if you just want to snapshot the application behaving badly <em>now</em>, but send the bug report later. Once you have generated the diagnostics information file, you can use file sharing to transfer the file to your computer, and send the bug report from there. [The archive]({{< relref "../../game-organization/game-archive.html#file-sharing" >}}) page has more information about how file sharing works.

## Collecting logging data

In the Diagnostics {{< icon "diagnostics" >}} area of the app, just above the bug reporting buttons, there is an option "Collect logging data". While this is enabled, a log file is written in the background that captures technical details about what you do with the app, which functions you execute, and what steps in detail the app performs in response to your requests.

Sending a bug report without logging enabled is useful, but the diagnostics information file that is attached to the report contains only a snapshot of the state the application is in at the moment the report is generated. If you enable logging, however, the diagnostic information file (which now includes the log file) will document how the application got into its erroneous state. This is a great help for reproducing a problem, especially when you yourself in your bug report cannot describe exactly the steps to reproduce the problem.

{{< hint type=important >}}
For the log file to be useful, you must have logging enabled for some time before you actually send the bug report. Ideally, logging would be turned on from the moment when the application is launched, up to the moment where you experience the bug and send the report.
{{< /hint >}}

Although it is such a useful thing, logging is disabled by default, mainly because you may have privacy concerns. The secondary reason for disabling logging by default is because it uses a few of your device's resources: The log file may grow to a maximum size of 10 MB, and writing the file requires a few write cycles of the solid state drive in your device.

## What is inside the diagnostics information file?

The file is a ZIP archive that contains the following pieces of information:

- A version number that identifies the format of the information inside the attachment.
- The iOS version and device type (only whether it is an iPhone or an iPad).
- A snapshot of some of the app's in-memory objects that make it possible to reproduce the state of the app exactly the way it was at the time the diagnostics information file was generated.
- Your current preferences (including the players you have defined and the settings you use for your computer players).
- An SGF file representing the game that is currently in progress.
- A screenshot of the Play {{< icon "gogrid2x2" >}} area of the app (excluding the status bar, i.e. the name of your carrier is not in the screenshot).
- The output of the "showboard" GTP command.
- The log file (if logging was [previously enabled](#collecting-logging-data)).

## What is not inside the diagnostics information file?

The file does **not** contain any information that identifies you or your device, nor any other information that comes from outside the app.

If you are concerned, please feel free to inspect the content of the file by forwarding the email to your Mac or PC before you send the bug report to me. As already mentioned [further up](#diagnostics-information-file), you can also transfer the file to your computer via [file sharing]({{< relref "../../game-organization/game-archive.html#file-sharing" >}}) and inspect the file there.

Finally, since the app is open source you can also study the program code that produces the file. Let me know and I will point you in the right direction.

## Diagnostics information file size and persistence

The diagnostics information file's size varies with the current game's board size, the number of moves made so far, your device's screen resolution, and whether a log file is included or not. By far the largest part is the log file: This can grow up to 10 MB, but since the diagnostics information file is .zip compressed the end result is much smaller.

Without including the log file, the smallest diagnostics information file sizes can be below 1 MB, while the largest files should not take up more than a couple of MB.

For technical reasons, a copy of the file remains on your device after the bug report email has been generated. The copy is located in the documents folder within the the app app bundle where it is not accessible to any other apps - even the app will not use the copy after the bug report has been sent. If you generate another bug report, the lingering file from the previous bug report is overwritten. If you want to get rid of the file you can delete it via [file sharing]({{< relref "../../game-organization/game-archive.html#file-sharing" >}}).
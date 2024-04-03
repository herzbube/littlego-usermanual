---
title: Sending crash reports
weight: 200
resources:
  - name: crash-report-settings
    src: "crash-report-settings.jpg"
    title: Crash report settings screen
---

When the app crashes, data which can help the developer to correct the problem will be collected automatically. All collected data is stored on your device, nothing is sent without your permission. Next time you launch the app an alert will be displayed, offering you the choice to send the collected data in the form of a crash report to the developer. If you decline, no data is sent.

{{< columns size=regular >}}

In the Diagnostics {{< icon "diagnostics" >}} area of the app, you can change the settings that are related to the crash reporting service.

For instance, you can turn off data collection entirely, or you can define an email address that should be sent along with the crash data so that the developer will be able to contact you if clarifications are needed about the problem.

The crash report is a simple text file that contains the following information:

- Hardware model (not the device ID!)
- Operating system version
- Type of crash
- Technical information about the state of the application when the crash
  occurred

<--->

{{< img name="crash-report-settings" lazy=false >}}

{{< /columns >}}

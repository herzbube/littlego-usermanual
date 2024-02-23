# Introduction

This repository contains the user manual for the iOS application Little Go. It is a companion repository for Little Go's [source code repository](https://github.com/herzbube/littlego/).

The user manual is kept in a separate repository to avoid bloat of the source code repository due to large image files that can potentially change with every new release of the app.

The latest version of the published user manual is available at [littlego-usermanual.herzbube.ch](https://littlego-usermanual.herzbube.ch/).

# Format

The user manual is written mostly in Markdown, specifically GitHub Flavored Markdown ([specs](https://github.github.com/gfm/)). Markdown files use the extension `.md`.

In some cases AsciiDoc ([language docs](https://docs.asciidoctor.org/asciidoc/latest/)) is used as an alternative. AsciiDoc files use the extension `.adoc`.

*Note:* File extensions were chosen so that they are recognized by both GitHub and Hugo. The goal is that GitHub renders the file content when a user navigates to the file while browsing through the repository.

See [AuthoringContent.md](AuthoringContent.md) for notes on authoring content.

# Publishing process

The publishing process consists of the following steps:

1. Generate a browseable website from the Markdown and AsciiDoc source files. The static website generator [Hugo](https://gohugo.io/) is used for this. See [HugoConfiguration.md](HugoConfiguration.md) for configuration notes.
2. Publish the website files to a web hosting platform. The current platform is GitHub Pages.
3. Package the website files into a ZIP archive.
4. Publish a release on GitHub with the ZIP archive attached to the release.

See [ReleaseSteps.md](ReleaseSteps.md) for step-by-step instructions how to perform a release (including which prerequisites you need to install on your machine).

# FAQ

## Why is a ZIP archive needed?

The website files in the ZIP archive can be used to read the user manual offline. This is a nice service for interested users who, for their own reasons, want to download the archive to their computer. However, the main use case is to package the ZIP archive into the next release of the Little Go app so that the user manual can be provided in-app.

## Why does the user manual need to be provided in-app?

It might be tempting to just point the user to the public website to read the manual. However, the user manual must be seen as an integral part of the app, and the user should never find themselves in a situation where they cannot look up how something works just because an external resource is not available.

A few scenarios:

- The user fails to have an Internet connection at the moment.
- The user has an old device where they can't update the app anymore because the project dropped support for the iOS version that runs on that device. For some reason the project then switches the hosting of the user manual website. The old app version must still be able to provide a user manual.
- The project is discontinued and the user manual website is no longer available. Installed apps will continue to function despite the project having been discontinued, and they must still be able to provide a user manual.

## Is the user manual available in other languages than English?

At the moment, no.

The Little Go project is a single person effort and does not have the resources nor time to provide more than one language. Although in theory machine translation promises to fill the gap, the reality is that machine translations are of poor quality and do not meet the project standards.

## Are older versions of the user manual available?

**Online**: No. Only the latest version of the user manual is published.

**Offline**: Yes. Check out the [list of releases on GitHub](https://github.com/herzbube/littlego-usermanual/releases). Every release has a file attachment named `littlego-usermanual-<version>.zip`.

# Attributions

The file `screenshot-annotations.svg` was originally copied from [this file](https://github.com/R3V1Z3/Ugotsta.github.io/blob/master/images/svg/arrows-and-annotations.svg). Existing shapes were then adapted to the needs of this project, and some shapes were newly created, i.e. are original to this project. At the time the copy was made, the repository containing the original shapes was using the MIT license. Thanks to the author (GitHub user [R3V1Z3]((https://github.com/R3V1Z3)) for making the shapes available for public use. You may want to check out his [Inkscape tutorial video](https://www.youtube.com/watch?v=2M9w5ME0GLU) on YouTube which made me aware of the original file.
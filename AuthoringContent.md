# Authoring content

This document contains notes on how to author content for this project.

## Test site locally

The following command launches a small web server built into Hugo with which you can test the online configuration of the site locally. Point your browser to the URL that Hugo prints out when you run the command.

    hugo server -D --config=config/online/hugo.toml

Notes:

- The `-D` flag tells Hugo to include draft content.
- Information how to test the offline configuration can be found in [ReleaseSteps.md](ReleaseSteps.md).


## Creating a new content file

This command creates a new content file `foo.md` in section `bar`.

    hugo new content bar/foo.md

Hugo creates new content with the "draft" flag set. Remove this flag as the first step.

## Relative URLs

To support serverless browsing via filesystem URLs (`file://`), content must use relative instead of absolute URLs. For instance, use the Hugo shortcode `RelRef` instead of `Ref`.

See the [Hugo docs](https://gohugo.io/methods/shortcode/relref/) for details.

## Using the "img" shortcode

When the Geekdoc theme's "img" shortcode is used the shortcode's "size" property should be set to "origin", if possible, to prevent Hugo from resizing the image.

Especially in the case of `GIF` files the resized image file can be **a lot** larger than the original.

## Screenshot files

Taking a screenshot from the simulator results in a `PNG` file. To reduce the size of the Git repo, convert the screenshot to `JPG` format and check whether the resulting `JPG` file is smaller than the `PNG` file. In the past this used to be the case even when the `JPG` file was created with a high quality setting, however lately it seems that simulators create `PNG` files with better compression, so you should always check which file is smaller.

If you have ImageMagick installed you may find `script/convert-to-jpg.sh` useful: It's a little shell script that takes 1-n input files and converts them to `JPG` format with quality 95. Each converted file is placed next to its original, using the same file name but with the file extension changed to `.jpg`.

Use Inkscape or some other vector graphics application to annotate the screenshot. First create a new `SVG` file, next import the `JPG` or `PNG` file into the `SVG` document (select the "embed" option), then use the annotation shape templates in `screenshot-annotations.svg` to make the annotations. Because web browsers know how to display `SVG` images, the resulting `SVG` file can simply be referenced from the content of the manual just like any other graphics file. The advantage of using an `SVG` image like this is that the annotations can be edited again later on. The disadvantage is that the `SVG` file will be a bit larger than the original `JPG` or `PNG` file, because the embedded image is stored in base64 encoding.

**Note:** It is safe to delete the `JPG` or `PNG` file after importing the image into the `SVG` document. If you want to get hold again of the original `JPG` or `PNG` image later on, you can export it from Inkscape by right-clicking and selecting the "Extract image" entry from the context menu.

## Icons

### Using an existing icon

To use an existing icon you use the shortcode `{{< icon >}}` provided by the Geekdoc theme. Example:

    {{< icon "computer-play" >}}

Existing icons can be found in the folder `assets/sprites`. The icon id to use should match the file name. If it doesn't work as expected you can open the SVG file in a text editor and check the value of the `id` attribute of the `symbol` element.

**Note:** SVG sprites are, essentially, reusable SVG drawings. Explaining how sprites work in detail is beyond the scope of this document.

### Icon size

The size assigned to icons by Geekdoc typically is too small for Little Go icons. To increase the size you can surround the `icon` shortcode with a block or inline HTML element that uses the class `littlego-icon`. Examples:

```
<!-- With block element "div" -->
<div class="littlego-icon">
This is the "Computer play" icon: {{< icon "computer-play" >}}
</div>

<!-- With inline element "span" -->
This is the "Computer play" icon: <span class="littlego-icon">{{< icon "computer-play" >}}</span>
```

For this to work the Geekdoc theme must have been customized with a project-specific CSS file. See section "Customize Hugo theme" in [ReleaseSteps.md](ReleaseSteps.md#customize_hugo_theme) for details.

### Adding a new icon

A few steps are needed to make a new Little Go icon available for use in this user manual project. The following instructions are based on the information found on the [Icon Sets](https://geekdocs.de/features/icon-sets/) page in the Geekdoc documentation.

1. Open this website in a browser: https://svgsprit.es/
1. Upload the SVG file from the `resource` folder of the Little Go project to the website.
1. The website shows the result of the SVG-to-sprite conversion. Make sure that the `<svg>` element has this attribute: `class="hidden"`
1. Download the sprite.
1. Move the downloaded SVG file to `assets/sprites` and name the file to match the `id` attribute of the `symbol` element found inside the SVG file.

## Videos

### Animated GIFs

When you finish recording a video from the simulator you can right-click on the preview video which shows for a moment, then choose whether you want to save the video as an `MP4` file or as an animated `GIF`.

If you want to further edit the video you need to save it as `MP4`. After you finished editing you can still convert it to an animated `GIF` using any number of tools. Make sure to allow the animation to auto-play and loop.

If you have `ffmpeg` installed, the following command will create an endlessly looping animation with a 5 second delay between loops:

    ffmpeg -i input.mp4 -loop 0 -final_delay 500 output.gif

`WEBP` is a more modern format than `GIF`, which also promises a lower file size. The problem with `WEBP` is that it does not seem to be possible to add a delay at the end of a loop - at least I have not found a working option with `ffmpeg`. So if a looping and a delay is needed, at the moment `GIF` is required. If no loop or delay is required, though, then you should consider using `WEBP` instead of `GIF`.

### Reducing frame rate

If an animated `GIF` has a larger file size than the original `MP4` it may be more efficient to keep the `MP4` format and instead reduce the frame rate.

The following example uses `ffmpeg` to reduce the frame rate to 10 frames per second.

    ffmpeg -i input.mp4 -vf "fps=10" 500 output.mp4

The result can then be embedded into a markdown document as follows. Leave out the "autoplay" and "loop" attributes and adjust the folder as needed.

```
 <video width=100% controls autoplay loop>
  <source src="folder/video.mp4" type="video/mp4">
  Your browser does not support the video tag.  
</video>
```

## Writing guidelines

In general, when authoring new content follow the style you find on the already existing manual pages. When in doubt, here are some guidelines for your writings. These guidelines can also serve as a quick reference so you don't have to continuously hunt for terms.

- Prefer the active voice over the passive voice. The active voice in general provides a clearer picture of what's going on, because it forces the writer to identify the subject that performs an action. The passive voice on the other hand allows omitting the actor, thus inviting less clarity.
- Avoid "the user". Instead assume the reader is the user and address them directly with "you".
- Use the following terms and styles to identify user interface elements. In some cases, accompany the user interface element name with a matching icon to give the reader a cue that this is a special reference.
  - The tab bar
  - The &lt;name&gt; &lt;icon&gt; area (refers to the content of a tab)
  - The toolbar
  - The &lt;name&gt; &lt;icon&gt; button (refers to a button shown in the toolbar)
  - The "&lt;name&gt;" button (refers to a button that belongs to a specific screen, to be used when the manual discusses that screen)
  - The Play menu
  - The "&lt;name&gt;" menu item
  - The Game Info &lt;icon&gt; screen
  - The Status Text
  - The &lt;name&gt; &lt;icon&gt; mode (refers to a mode in the Play area, e.g. Scoring mode)
  - A &lt;name&gt; &lt;icon&gt; game (refers to a game type, e.g. a Human vs. Computer game)
  - The "&lt;name&gt;" setting
  - [...] in the Settings area of the app under "&lt;settings section&gt; > &lt;setting name&gt;"
- Game terms
  - Either "make a move" or "play a move"
  - Side to play next
  - Intersection
  - Place a stone
- Other terms
  - Use "the app" instead of "Little Go"
  - An area is "visible" or "not visible".
  - A mode is "active" or "not active". It is "activated" or "deactivated".
  - The computer makes moves "on your behalf" or "on behalf of the human player".
  - Use "SGF file", not ".sgf file".
  - Use double quotes ("), not single quotes (').
  - The user "taps" or "selects" screen elements, they never "click".
- When working with screenshots, it is often useful to provide them as SVG so that you can annotate screen elements. When you use numbers to annotate, the text can refer to the numbers with the help of numbered lists, or with adding one of the "circled digit <name>" Unicode characters (e.g. ①, which is U+2460, or "CIRCLED DIGIT ONE").
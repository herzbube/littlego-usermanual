# Authoring content

This document contains notes on how to author content for this project.

## Creating a new content file

This command creates a new content file `foo.md` in section `bar`.

    hugo new content bar/foo.md

Hugo creates new content with the "draft" flag set. Remove this flag as the first step.

## Relative URLs

To support serverless browsing via filesystem URLs (`file://`), content must use relative instead of absolute URLs. For instance, use the Hugo shortcode `RelRef` instead of `Ref`.

See the [Hugo docs](https://gohugo.io/methods/shortcode/relref/) for details.

## Screenshot files

Taking a screenshot from the simulator results in a `PNG` file. To reduce the size of the Git repo, convert the screenshot to `JPG` format. Even with a high quality setting the resulting `JPG` file will take only about 25-30% of the original `PNG` file's size.

If you have ImageMagick installed you may find `script/convert-to-jpg.sh` useful: It's a little shell script that takes 1-n input files and converts them to `JPG` format with quality 95. Each converted file is placed next to its original, using the same file name but with the file extension changed to `.jpg`.

Use Inkscape or some other vector graphics application to annotate the screenshot. First create a new `SVG` file, next import the `JPG` file into the `SVG` document (select the "embed" option), then use the annotation shape templates in `screenshot-annotations.svg` to make the annotations. Because web browsers know how to display `SVG` images, the resulting `SVG` file can simply be referenced from the content of the manual just like any other graphics file. The advantage of using an `SVG` image like this is that the annotations can be edited again later on. The disadvantage is that the `SVG` file will be a bit larger than the original `JPG` file, because the embedded image is stored in base64 encoding.

**Note:** It is safe to delete the `JPG` file after importing the image into the `SVG` document. If you want to get hold again of the original `JPG` image later on, you can export it from Inkscape by right-clicking and selecting the "Extract image" entry from the context menu.

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

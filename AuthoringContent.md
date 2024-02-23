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

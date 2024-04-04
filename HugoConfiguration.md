# Hugo configuration notes

This document contains notes about the Hugo setup of this project.

## Site creation

For historic reference, the Hugo site of this project was created with these commands:

    cd /path/to/repo
    hugo new site littlego-usermanual

## Online vs. offline configuration

There are two configuration files located in the `config` folder, intended to publish the site for two different use cases:

- `config/online/hugo.toml`: Publish the site for online browsing under the domain https://littlego-usermanual.herzbube.ch/.
- `config/offline/hugo.toml`: Publish the site for offline browsing, i.e. for serverless access with `file://` URLs.

## Theme

The Hugo theme used in this project is the [Geekdoc](https://geekdocs.de/) theme. After the project repository is cloned the theme needs to be installed into Hugo's `themes` folder located within the repository. Installation instructions can be found in [ReleaseSteps.md](ReleaseSteps.md).

These are the settings required in `hugo.toml` to run the theme:

```
theme = "hugo-geekdoc"

# Geekdoc required configuration
pygmentsUseClasses = true
pygmentsCodeFences = true
disablePathToLower = true
```

## AsciiDoc support

Hugo requires the external command `asciidoctor` to process AsciiDoc files. To allow the command to be executed, the following snippet must be added to `hugo.toml`:

```
[security]
  [security.exec]
    allow = ['^asciidoctor$']
```

See the [Hugo docs](https://gohugo.io/about/security-model/#security-policy) for details.

**Note**: By setting the value of the `allow` option we prevent some commands from being executed which by default are allowed. This should not be a problem, though, because this project does not use these commands. Refer to the Hugo docs (link above) to see the commands that are allowed by default.

## Nested shortcodes

By default Hugo does not render the output of the inner shortcode when two shortcodes are nested. To allow nested shortcodes to work properly the following snippet must be added to `hugo.toml`:

```
[markup]
  [markup.goldmark]
    [markup.goldmark.renderer]
      # Needed when nesting shortcodes, e.g. img within columns
      unsafe = true
```

## Relative URLs

By default Hugo generates URLs that use absolute paths, i.e. paths that start with `/`. The expectation is that a web server will serve the generated content from the top level of a website.

This does not work when the generated content is browsed serverless via filesystem URLs (`file://`), because the generated content will practically always be located somewhere far away from the filesystem root `/`.

The solution is to set the following option in `config/offline/hugo.toml`:

    relativeURLs = true

See the [Hugo docs](https://gohugo.io/content-management/urls/#relative-urls) for details.

**Note**: Although the docs warn:

> Do not enable this option unless you are creating a serverless site, navigable via the file system.

currently no negative side effects from using relative URLs are known.

## URLs pointing to index files

By default Hugo generates files named `index.html`, and URLs that point to the parent **folders** containing the `index.html` files. The expectation is that a web server will map a folder URL request so that `index.html` is served instead of a list of the folder contents.

This does not work when the generated content is browsed serverless via filesystem URLs (`file://`), because there is no server that can do the mapping. Instead of `index.html` the user will see a list of the folder contents.

The solution is to set the following option in `config/offline/hugo.toml`:

    uglyURLs = true

Instead of `index.html` Hugo now generates HTML files whose name matches their source file (e.g. `foo.md` will generate `foo.html`), and URLs that point to the explicitly named HTML files.

See the [Hugo docs](https://gohugo.io/content-management/urls/#appearance) for details.

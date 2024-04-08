# Release steps

This document lists the steps needed to make a release of the Little Go user manual.

## Prerequisites

### Hugo

Hugo is the static website generator used to transform the source files of this project into a browseable website.

Recommended on macOS is to install Hugo via Homebrew:

    brew install hugo

On other platforms use the package manager of your choice to install Hugo.

### Hugo theme

The Hugo site configuration of this project uses the [Geekdoc](https://geekdocs.de/) theme.

Each time you clone the project repository you also need to install the theme. On Unix-y platform use the following commands (taken from the [Getting Started](https://geekdocs.de/usage/getting-started/#option-1-download-pre-build-release-bundle) page of the theme website) to install the theme:

```
cd /path/to/repo
mkdir -p littlego-usermanual/themes/hugo-geekdoc
curl -L https://github.com/thegeeklab/hugo-geekdoc/releases/latest/download/hugo-geekdoc.tar.gz | tar -xz -C littlego-usermanual/themes/hugo-geekdoc/ --strip-components=1
```

On other platforms use your familiar tools to download and extract the tarball. You know that you got it right if you see the file `theme.toml` in the folder `littlego-usermanual/themes/hugo-geekdoc`.

### Customize Hugo theme

This project requires a bit of customization to the Hugo theme. At the moment the customization consists only of a custom CSS file which must be present in the following location:

    ./littlego-usermanual/static/custom.css

**Important:** When you make changes to this file some browsers require you to empty their cache & perform a manual page reload to pick up the updates (e.g. Safari) while others reload the updated file immediately (e.g. Firefox).

### AsciiDoctor

Hugo needs the `asciidoctor` command to process AsciiDoc files. **Note**: The command must be in the `PATH`.

Recommended on macOS is to install AsciiDoctor via Homebrew:

    brew install asciidoctor

On other platforms use the package manager of your choice to install AsciiDoctor.

### Versions

The last time a user manual was generated the following prerequisite versions were used:

- Hugo extended 0.124.1
- Geekdoc theme 0.45.0
- Asciidoctor 2.0.20

## Release prep

Before a release of the user manual is made, the following preparation steps should be performed:

- Make sure that the issues in the bugtracker are up to date.
- If prerequisites were updated, note down the new versions in this README.
- Make sure that no unfinished documentation has been forgotten in the source files (e.g. search for "xxx" or "TODO").

## Generate website

Remove the `public` and `resources` directory to make sure that there's no mix of old and new build files:

    cd /path/to/repo
    cd littlego-usermanual
    rm -rf public resources

Then run Hugo twice to generate the website both for online and offline use:

    hugo --config=config/online/hugo.toml --destination public/online
    hugo --config=config/offline/hugo.toml --destination public/offline

## Verify website content

The next step is to verify that content changes appear as intended and that new content is present. The latter is important because Hugo supports marking content as "draft", and when it generates a website it will ignore all content marked as "draft".

Verification needs to be done twice: once when the website is browsed offline and once when it is browsed online.

**Offline browsing**: Open `littlego-usermanual/public/offline/index.html` in your web browser so that the content is accessed via `file://` URLs.

**Online browsing**: Hugo provides a small web server that can be run locally. Run the web server with the following commands, then point your browser to the URL that Hugo prints out (should be [http://localhost:1313/](http://localhost:1313/)):

    cd /path/to/repo
    cd littlego-usermanual
    hugo server --config=config/online/hugo.toml --destination public/online-test

Note: If `--destination` is not specified the content to be served by `hugo server` is generated in the default folder, which is `public`.

## Publish to GitHub Pages

Switch the Git branch:

    cd /path/to/repo
    git checkout gh-pages

Remove the user manual from the previous release:

    rm -r /tmp/littlego-usermanual /tmp/CNAME
    mv littlego-usermanual CNAME /tmp
    rm -r *
    mv /tmp/littlego-usermanual /tmp/CNAME .

Add the user manual from the new release:

    cp -Rp littlego-usermanual/public/online/* .

Publish the new user manual:

    git add .
    git commit -m "add user manual for version <version>"

Switch back to the main Git branch:

    git checkout main

## Create a ZIP archive

Remove a previously generated ZIP archive:

    cd /path/to/repo
    rm littlego-usermanual.zip

Create the new ZIP archive:

    zip -r littlego-usermanual.zip littlego-usermanual/public/offline/*

## Finalise steps

Commit any outstanding changes to version control, then tag and sign the release in Git:

    cd /path/to/repo
    git tag -s -m "tagging release <version>" <version> <commit hash>

Update the GitHub repository

    git push
    git push --tags

Finally, create a new release on GitHub that references the Git tag and attach `littlego-usermanual.zip` to the release.

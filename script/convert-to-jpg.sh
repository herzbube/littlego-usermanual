#!/bin/bash

if test $# -eq 0; then
  echo "file(s) to convert not specified"
  exit 1
fi

if test $# -eq 1; then
  case "$1" in
    -h|--help)
      echo "$(basename $0) file1 [file2] [...]"
      echo ""
      echo "Each converted file is placed in the same folder as its corresponding input file."
      echo "The name of the converted file is the same as the name of the input file, with the extension replaced by .jpg."
      echo "If the converted file already exists it is overwritten."
      exit 0
      ;;
    *)
      ;;
  esac
fi

for inputfile in "$@"; do
  if test ! -f "$inputfile"; then
    echo "file does not exist: $inputfile"
    exit 1
  fi
done

which convert >/dev/null
if test $? -ne 0; then
  echo "command 'convert' not found in PATH"
  exit 1
fi

for inputfile in "$@"; do
  outputfile="$(echo $inputfile | sed -e 's/\.[^\.]*//').jpg"
  if test "$inputfile" = "$outputfile"; then
    outputfile="$outputfile.jpg"
  fi

  if test -f "$outputfile"; then
    rm "$outputfile"
  fi

  echo "converting $inputfile => $outputfile"
  convert -quality 95 "$inputfile" "$outputfile"
done


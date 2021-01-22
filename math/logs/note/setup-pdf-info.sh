#!/bin/bash

if [ $# -ne 2 ]; then
  echo "usage: sanitizepdf [filename] [pdftitle]" 1>&2
  exit 1
fi


filename=$1
title=$2
# now=$(date "+D:%Y%m%d%H%M%S+09'00'")

exiftool -Title="$title" -Author="Kohei Hakoishi" $filename

echo "作成されたPDFの確認"
pdfinfo $filename

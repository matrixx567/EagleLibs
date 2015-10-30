#!/bin/bash

#Run Eagle schematic with script print_docu
#Run Eagle board with script print_docu
#Convert PDF to PNG
#Merge PDFs
#Generate RST


imageMagickConvert="/c/ImageMagick-6.9.2/convert.exe" 

echo "Convert PDF to PNG"

echo "Convert Schematic"
$imageMagickConvert -density 400 "$1-schematic.pdf" -quality 95 -background white -alpha remove -trim  -bordercolor White  -border 2x2 "$1-schematic.png"

echo "Convert Top Assembly"
$imageMagickConvert -density 400 "$1-assembly-top.pdf" -quality 95 -background white -alpha remove -trim  -bordercolor White -border 2x2 "$1-assembly-top.png"
echo "Convert Bottom Assembly"
$imageMagickConvert -density 400 "$1-assembly-bottom.pdf" -quality 95 -background white -alpha remove -trim  -bordercolor White -border 2x2 "$1-assembly-bottom.png"

echo "Convert Top Copper"
$imageMagickConvert -density 400 "$1-copper-top.pdf" -quality 95 -background white -alpha remove -trim  -bordercolor White -border 2x2 "$1-copper-top.png"
echo "Convert Bottom Copper"
$imageMagickConvert -density 400 "$1-copper-bottom.pdf" -quality 95 -background white -alpha remove -trim  -bordercolor White -border 2x2 "$1-copper-bottom.png"

#rm $1-schematic.pdf $1-assembly-top.pdf $1-assembly-bottom.pdf $1-copper-top.pdf $1-copper-bottom.pdf




























---
layout: post
title: Compression
description: compression
platform: WindowsForms
control: PDF
documentation: ug
---

# Compression

Compression is the process of reducing the size of data in order to save space or transmission time.

For data transmission, compression can be performed on any of the following depending on a number of factors:

* Just the data content, or
* Entire transmission unit.

## Content compression

Content compression involves following:

* Removing all extra space characters.
* Inserting a single repeat character to indicate a string of repeated characters.
* Substituting smaller bit strings for frequently occurring characters.

### Advantages of Content compression

•Reduces a text file upto 50 percent of its original size.

![](PDF-Compliance_images/PDF-Compliance_img1.png)

_Note: Compression is performed by a program that uses a formula or algorithm, which determines how to compress or decompress the data. This algorithm is one of the critical factors that determines compression quality and is elaborated below._ 

### Controlling the Compression Levels

Essential PDF controls the compression level of document by using the PdfCompressionLevel class with the help of the LZW and zlib/deflate compression algorithms. Both LZW and Flate algorithms compress either binary data or ASCII text and always produces the binary data.

The following compression levels are supported by Essential PDF:

•None-Packs without compression

•BestSpeed-Performs high speed compression; reduction of data size is lesser

•BelowNormal-Performs compression that is rated between Normal and BestSpeed compressions

•Normal-Performs compression at normal speed; normal reduction of data size

•AboveNormal-Performs enhanced compression compared to the normal compression; time consumption exceeds the normal compression

•Best-Performs the best compression; time consuming
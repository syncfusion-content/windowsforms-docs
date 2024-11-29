---
layout: post
title: How To Print a Diagram In a Single Page | Diagram | Windows Forms | Syncfusion®
description: how to print a diagram in a single page
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Print a Diagram In a Single Page

Essential Diagram uses the size of your diagram model and the printer page settings for calculating the number of pages to be rendered while printing. Even though you might have only one page worth of nodes in your diagram model, if the model bounds are larger, the Diagram control will attempt to paginate and print the entire model.

To print the diagram in a single page, you have to temporarily modify the size of the model.

{% tabs %}

{% highlight c# %}

// The desired page size is 21 x 29.7 centimeters.

// The margins are of size 1 inch or 25 mm.

int verticalMargin = 260;

int horizontalMargin = 260;

// The following units are in millimeters, so convert them to pixels.

float pageHeight = Diagram.MeasureUnitsConverter.Convert((2970 - (verticalMargin * 2)) / 10, MeasureUnits.Millimeter, MeasureUnits.Pixel);

// float pageHeight = bounds.Height;

float pageWidth = Diagram.MeasureUnitsConverter.Convert((2100 - (horizontalMargin * 2)) / 10, MeasureUnits.Millimeter, MeasureUnits.Pixel);

// Set the model height to twice the page height.

diagram1.Model.DocumentSize.Height = (int)pageHeight / 2;

// Set the model width to page width

diagram1.Model.DocumentSize.Width = (int)pageWidth; 

this.PrintPreview( );

{% endhighlight %}

{% highlight vbnet %}

' The desired page size is 21 x 29.7 centimeters.

' The margins are of size 1 inch or 25 mm.

Dim verticalMargin As Integer = 260

Dim horizontalMargin As Integer = 260

' The following units are in millimeters, so convert them to pixels.

Dim pageHeight As Single = Diagram.MeasureUnitsConverter.Convert((2970 - (verticalMargin * 2)) / 10, MeasureUnits.Millimeter, MeasureUnits.Pixel)

' float pageHeight = bounds.Height;

Dim pageWidth As Single = Diagram.MeasureUnitsConverter.Convert((2100 - (horizontalMargin * 2)) / 10, MeasureUnits.Millimeter, MeasureUnits.Pixel)

' Set the model height to twice the page height.

diagram1.Model.Size = New SizeF(pageWidth, pageHeight / 2)

Me.PrintPreview( )

{% endhighlight %}

{% endtabs %}

A sample which demonstrates Printing is available in the below sample installation path.

..\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Diagram.Windows\Samples\2.0\Getting Started\Printing
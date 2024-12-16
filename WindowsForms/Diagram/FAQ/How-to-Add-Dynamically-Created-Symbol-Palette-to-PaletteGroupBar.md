---
layout: post
title: How to Add Symbol Palette to PaletteGroupBar | Syncfusion®
description: how to add dynamically created symbol palette to palettegroupbar
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Add Dynamically Created Symbol Palette to PaletteGroupBar

The following code sample demonstrates how to add a dynamically created symbol palette to the PaletteGroupBar control.

{% tabs %}

{% highlight c# %}

//Create an instance of SymbolPalette.

SymbolPalette palette = new SymbolPalette("Palette");

//Add some nodes to the palette.

palette.AppendChild(new Ellipse(0, 0, 100, 100));

palette.AppendChild(new RoundRect(new RectangleF(0, 0, 100, 50),              

MeasureUnits.Pixel));

palette.AppendChild(new LineConnector(PointF.Empty, new PointF(0, 

100)));

//Add the palette to PaletteGroupBar.

paletteGroupBar1.AddPalette(palette);

{% endhighlight %}

{% highlight vbnet %}

'Create an instance of SymbolPalette.

Dim palette As SymbolPalette = New SymbolPalette("Palette")

'Add some nodes to the palette.

palette.AppendChild(New Ellipse(0, 0, 100, 100))

palette.AppendChild(New RoundRect(New RectangleF(0, 0, 100, 50),  

	MeasureUnits.Pixel))	

palette.AppendChild(New LineConnector(PointF.Empty, New PointF(0, 

	100)))

'Add the palette to PaletteGroupBar.

paletteGroupBar1.AddPalette(palette)

{% endhighlight %}

{% endtabs %}

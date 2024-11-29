---
layout: post
title: How to Import Visio Stencil | Diagram | Windows Forms | Syncfusion®
description: how to import visio stencil?
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Import Visio Stencil?

You can import Visio stencils (.vss and .vsx) into symbol palettes. Essential Diagram uses the Visio stencil converter to convert the stencils as the symbol palette. You have to add Syncfusion.Diagram.Utility.Windows.dll as a reference in your application to use this converter.

The following code example illustrates how to convert Visio stencils into symbol palettes.

{% tabs %}

{% highlight c# %}

SymbolPalette paletteToReturn = null;

string strFileName = "Basic Flowchart Shapes.vss";

//Create an instance of VisioStencilConverter

VisioStencilConverter converter = new VisioStencilConverter(strFileName);

converter.ShowProgressDialog = true;

//Convert the stencil as SymbolPalette

paletteToReturn = converter.Convert();

paletteGroupBar1.AddPalette(paletteToReturn);

{% endhighlight %}

{% highlight vbnet %}

Dim paletteToReturn As SymbolPalette = Nothing

Dim strFileName As String = "Basic Flowchart Shapes.vss"

'Create an instance of VisioStencilConverter

Dim converter As VisioStencilConverter = New VisioStencilConverter(strFileName)

converter.ShowProgressDialog = True

'Convert the stencil as SymbolPalette

paletteToReturn = converter.Convert()

paletteGroupBar1.AddPalette(paletteToReturn)

{% endhighlight %}

{% endtabs %}

N>  You must have Visio installed in your machine to import the stencils.


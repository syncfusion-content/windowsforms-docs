---
layout: post
title: How to import Visio stencils in Windows Forms Diagram | Syncfusion®
description: Learn how to import Visio stencils into the Syncfusion® Windows Forms Diagram control and convert them into symbol palettes for diagram creation.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Import Visio Stencils in Windows Forms Diagram

You can import Visio stencils (.vss and .vsx) into symbol palettes. WinForms Diagram uses the Visio stencil converter to convert the stencils as the symbol palette. You have to add Syncfusion.Diagram.Utility.Windows.dll as a reference in your application to use this converter.

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


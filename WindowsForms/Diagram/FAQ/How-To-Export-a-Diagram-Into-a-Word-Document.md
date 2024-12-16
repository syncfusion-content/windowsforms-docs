---
layout: post
title: How To Export a Diagram Into a Word Document | Syncfusion®
description: how to export a diagram into a word document
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Export a Diagram Into a Word Document

To export a diagram into a Word document, follow the below given steps.

1. Save the diagram in any one of the standard image formats such as bitmaps, enhanced metafiles, SVG format files, and so forth.
2. Export the saved images to the Word document using Essential® DocIO.

N> To export the saved images to the Word document, you need to have Essential® DocIO installed in your system.


{% tabs %}

{% highlight c# %}

System.Drawing.Image diagramimage = new Bitmap(1, 1, PixelFormat.Format24bppRgb);

Graphics grfx = Graphics.FromImage(diagramimage);

IntPtr hdc = grfx.GetHdc();

Metafile emf = new Metafile(hdc, EmfType.EmfOnly);

Graphics emfgrfx = Graphics.FromImage(emf); 

this.diagram1.View.ExportDiagramToGraphics(emfgrfx,true);

grfx.ReleaseHdc(hdc);

grfx.Dispose();

emfgrfx.Dispose();

diagramimage.Dispose();

WordDocument document = new WordDocument();



//Adding a new section to the document.

IWSection section = document.AddSection();



//Adding a paragraph to the section.

IWParagraph paragraph = section.AddParagraph();

WPicture mImage = (WPicture)paragraph.AppendPicture(emf);

document.Save("Sample.doc", Syncfusion.DocIO.FormatType.Doc); 

System.Diagnostics.Process.Start("Sample.doc");

{% endhighlight %}

{% highlight vbnet %}

Dim diagramimage As System.Drawing.Image = New Bitmap(1, 1, PixelFormat.Format24bppRgb)

Dim grfx As Graphics = Graphics.FromImage(diagramimage)

Dim hdc As IntPtr = grfx.GetHdc()

Dim emf As Metafile = New Metafile(hdc, EmfType.EmfOnly)

Dim emfgrfx As Graphics = Graphics.FromImage(emf)

Me.diagram1.View.ExportDiagramToGraphics(emfgrfx,True)

grfx.ReleaseHdc(hdc)

grfx.Dispose()

emfgrfx.Dispose()

diagramimage.Dispose()

Dim document As WordDocument = New WordDocument()



'Adding a new section to the document.

Dim section As IWSection = document.AddSection()



'Adding a paragraph to the section.

Dim paragraph As IWParagraph = section.AddParagraph()

Dim mImage As WPicture = CType(paragraph.AppendPicture(emf), WPicture)

document.Save("Sample.doc", Syncfusion.DocIO.FormatType.Doc)

System.Diagnostics.Process.Start("Sample.doc")

{% endhighlight %}

{% endtabs %}
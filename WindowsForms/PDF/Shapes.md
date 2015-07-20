---
layout: post
title: Shapes
description: shapes
platform: WindowsForms
control: PDF
documentation: ug
---

# Shapes

Essential PDF has a comprehensive set of API that can be used for drawing a variety of shapes such as: 

* Rectangles 
* Circles 
* Arcs 
* Curves and so on. 

Shapes are filled by using different types of brushes like gradient brush, Tiling brush, and so on. Essential PDF supports drawing of shapes with different color spaces. Transparency of shapes can also be set.

PdfGraphics class allows drawing a wide range of primitives like 

* Lines 
* Curves 
* Paths 
* Text 

For each such operation, there is a set of methods like Draw<primitive>() (for example: DrawLine). 

Each set of methods accepts parameters specific to each primitive type (for example: pen, brush, boundaries, etc.). 

* If pen is used, the primitive are drawn 
* If brush is used, the primitive are filled. 

{{ '![C:/Users/ApoorvahR/Desktop/Note.png](Shapes_images/Shapes_img1.png)' | markdownify }}
{:.image }
 _Note: You must add the Syncfusion.Pdf.Graphics namespace to work with graphic objects._ 


The following code example illustrates how to draw shapes.





[C#]

//Creates a document.

PdfDocument doc = new PdfDocument();

//Adds a new page.

PdfPage page = doc.Pages.Add();

//Adds pen.

PdfPen pen = new PdfPen(PdfBrushes.Brown, 10f);

//Adds points.

PointF p1 = new PointF(10, 100);

PointF p2 = new PointF(10, 200);

PointF p3 = new PointF(100, 100);

PointF p4 = new PointF(100, 200);

PointF p5 = new PointF(55, 150);

PointF[] points = { p1, p2, p3, p4, p5};

// Draws Polygon.

page.Graphics.DrawPolygon(pen, PdfBrushes.Green, points);

//Saves the PDF.

doc.Save("Shapes.pdf");



[VB]



'Creates a document.

Dim doc As New PdfDocument()

'Adds a new page.

Dim page As PdfPage = doc.Pages.Add()

'Adds pen.

Dim pen As New PdfPen(PdfBrushes.Brown, 10.0F)

'Adds points.

Dim p1 As New PointF(10, 100)

Dim p2 As New PointF(10, 200)

Dim p3 As New PointF(100, 100)

Dim p4 As New PointF(100, 200)

Dim p5 As New PointF(55, 150)

Dim points As PointF() = {p1, p2, p3, p4, p5}

'Draws Polygon.

page.Graphics.DrawPolygon(pen, PdfBrushes.Green, points)

'Saves the PDF.

doc.Save("Shapes.pdf")



You can paginate the element as follows.



[C#]



//Creates a document.

PdfDocument doc = new PdfDocument();

//Adds a new page.

PdfPage page = doc.Pages.Add();

//Sets bounds for ellipse.

RectangleF rect = new RectangleF(0, 0, 100, 1000);

//Creates ellipse.

PdfEllipse ellipse = new PdfEllipse(rect); 

//Sets layout property to make the element break across the pages. 

PdfLayoutFormat format = new PdfLayoutFormat(); 

format.Break = PdfLayoutBreakType.FitPage; 

format.Layout = PdfLayoutType.Paginate; 

ellipse.Brush = PdfBrushes.Brown; 

//Draws ellipse. 

ellipse.Draw(page, 20, 20, format);

//Saves the PDF.

doc.Save("Shapes.pdf");





[VB]



'Creates a Document.

Dim doc As New PdfDocument()

'Adds a new page.

Dim page As PdfPage = doc.Pages.Add()

'Sets bounds for ellipse.

Dim rect As New RectangleF(0, 0, 100, 1000)

'Creates ellipse.

Dim ellipse As New PdfEllipse(rect)

'Sets layout property to make the element break across the pages. 

Dim format As New PdfLayoutFormat()

format.Break = PdfLayoutBreakType.FitPage

format.Layout = PdfLayoutType.Paginate

ellipse.Brush = PdfBrushes.Brown

'Draws ellipse. 

ellipse.Draw(page, 20, 20, format)

'Saves the PDF.

doc.Save("Shapes.pdf")




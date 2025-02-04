---
layout: post
title: Exporting in Windows Forms Html Viewer control | Syncfusion®
description: Learn about Exporting support in Syncfusion® Windows Forms Html Viewer (HTMLUI) control and more details.
platform: windowsforms
control: HTML UI
documentation: ug
---

#  Exporting in Windows Forms Html Viewer control

Essential<sup>®</sup> HTMLUI supports the export of HTML documents. These documents that are available in the HTMLUI control can be exported as images. The HTMLUI control uses the InputHTML class to render the HTML document and then converts the available document to Bitmaps.

{% tabs %}

{% highlight C# %}



private void button1_Click(object sender, System.EventArgs e)

{

Bitmap bmp = CreateBitmap();

bmp.Save(@"C:\Files\Bitmap.bmp");

bmp.Dispose();

}



private Bitmap CreateBitmap()

{

FormatManager manager = new FormatManager( htmluiControl1 );

InputHTML doc = new InputHTML( @"C:\Files\HTML.htm", manager );

doc.ClientSize = new Size( 550, 200 );

htmluiControl1.PrepareDocument( doc );

return LoadFinished( doc );

}



private Bitmap LoadFinished( InputHTML document )

{

Bitmap bmp = new Bitmap( 450, 500 );

Graphics g = Graphics.FromImage( bmp );

PaintEventArgs args = new PaintEventArgs( g,new Rectangle( 0, 0, 450, 500 ) );

Point startPoint = new Point( -document.Margins.Right, -document.Margins.Top );

Size oldSize = document.ClientSize;

document.ClientSize = document.RenderRoot.Size;

document.Draw( args, startPoint );

g.Dispose();

document.ClientSize = oldSize;

return bmp;

}

{% endhighlight %}

{% highlight VB %}



Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Dim bmp As Bitmap = CreateBitmap()

bmp.Save("C:\MyProjects\Bitmap.bmp")

bmp.Dispose()

End Sub



Private Function CreateBitmap() As Bitmap

Dim manager As FormatManager = New FormatManager(htmluiControl1)

Dim doc As InputHTML = New InputHTML("C:\MyProjects\HTML.htm", manager)

doc.ClientSize = New Size(550, 200)

htmluiControl1.PrepareDocument(doc)

 Return LoadFinished(doc)

End Function



Private Function LoadFinished(ByVal document As InputHTML) As Bitmap

Dim bmp As Bitmap = New Bitmap(450, 500)

Dim g As Graphics = Graphics.FromImage(bmp)

Dim args As PaintEventArgs = New PaintEventArgs(g, New Rectangle(0, 0, 450, 500))

Dim startPoint As Point = New Point(-document.Margins.Right, -document.Margins.Top)

Dim oldSize As Size = document.ClientSize

document.ClientSize = document.RenderRoot.Size

document.Draw(args, startPoint)

g.Dispose()

document.ClientSize = oldSize

Return bmp

End Function

{% endhighlight %}

{% endtabs %}

## HTMLUIExporting sample

This sample illustrates the export of HTML documents loaded into the HTMLUI to images.

![Exporting_img1](Exporting_images/Exporting_img1.jpeg)




---
layout: post
title: How To Convert Diagram Node To Any Image | Syncfusion®
description: how to convert diagram node to any image
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Convert Diagram Node To Any Image

To export a single node as an image, use the below code snippet.

{% tabs %}

{% highlight c# %}

Node selectedNode = this.diagram1.Controller.SelectionList[0];

if (selectedNode != null)

{

    //Node size depends on the border line. So we have to calculate the Line width also.

    Bitmap bmp = new Bitmap(Convert.ToInt32(selectedNode.Size.Width + selectedNode.LineStyle.LineWidth),

    Convert.ToInt32(selectedNode.Size.Height + selectedNode.LineStyle.LineWidth));

    using (Graphics gr = Graphics.FromImage(bmp))

    {
        System.Drawing.Drawing2D.Matrix m = new System.Drawing.Drawing2D.Matrix();

        m.Translate(Convert.ToInt32(-selectedNode.BoundingRectangle.Left), Convert.ToInt32(-selectedNode.BoundingRectangle.Top));

        gr.Transform = m;

        //This will render the node image in a graphics surface and we can export it easily to any type of image.

        selectedNode.Draw(gr);

        bmp.Save("image.png", System.Drawing.Imaging.ImageFormat.Png);

        Process.Start("image.png");

    }

}

{% endhighlight %}

{% highlight vbnet %}

Dim selectedNode As Syncfusion.Windows.Forms.Diagram.Node = Me.Diagram1.Controller.SelectionList(0)

If selectedNode IsNot Nothing Then 

'Node size depends on the border line. So we have to calculate the Line width also. 

Dim bmp As New Bitmap(Convert.ToInt32(selectedNode.Size.Width + selectedNode.LineStyle.LineWidth), Convert.ToInt32(selectedNode.Size.Height + selectedNode.LineStyle.LineWidth))

Using gr As Graphics = Graphics.FromImage(bmp) 

Dim m As New System.Drawing.Drawing2D.Matrix()

m.Translate(Convert.ToInt32(-selectedNode.BoundingRectangle.Left), Convert.ToInt32(-selectedNode.BoundingRectangle.Top)) 

gr.Transform = m 

'This will render the node image in a graphics surface and we can export it easily to any type of image. 

selectedNode.Draw(gr) 

bmp.Save("image.png", System.Drawing.Imaging.ImageFormat.Png) 

Process.Start("image.png") 

End Using 

End If

{% endhighlight %}

{% endtabs %}
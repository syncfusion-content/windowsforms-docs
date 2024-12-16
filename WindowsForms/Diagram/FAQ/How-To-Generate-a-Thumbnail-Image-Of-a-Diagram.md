---
layout: post
title: How To Generate a Thumbnail Image Of a Diagram | Syncfusion®
description: how to generate a thumbnail image of a diagram
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Generate a Thumbnail Image Of a Diagram

To display a thumbnail image of the diagram, follow the below given steps.

1. Generate a Bitmap image of the diagram. 
2. Use the GetThumbnailImage method of the Image class to generate a thumbnail, and set it as the image of the picture box in which you want to display the thumbnail.

The following code illustrates this.

{% tabs %}

{% highlight c# %}

public bool ThumbnailCallback()

{

return false;

}

//Generate Thumbnail and set it to be image of the PictureBox

Image.GetThumbnailImageAbort myCallback = new Image.GetThumbnailImageAbort(ThumbnailCallback); 

this.pictureBox1.Image = (Bitmap) diagramimage.GetThumbnailImage(150,75,myCallback, IntPtr.Zero);

{% endhighlight %}

{% highlight vbnet %}

Public Function ThumbnailCallback() As Boolean

Return False

End Function

'Generate Thumbnail and set it to be image of the PictureBox

Dim myCallback As Image.GetThumbnailImageAbort = New Image.GetThumbnailImageAbort(ThumbnailCallback)

Me.pictureBox1.Image = CType(diagramimage.GetThumbnailImage(150,75,myCallback, IntPtr.Zero), Bitmap)

{% endhighlight %}

{% endtabs %}
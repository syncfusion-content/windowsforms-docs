---
layout: post
title: Image Settings | WindowsForms | Syncfusion
description: Image Settings
platform: WindowsForms
control: Tools
documentation: ug
---
# Image Settings

ButtonAdv supports two types of images. They are,

* BackgroundImage
* Image

## BackgroundImage

BackgroundImage is the image used as the Background for the control, which is set using the BackgroundImage property. This BackgroundImage can be laid in various manner with the BackgroundImageLayout property.

 ![](Overview_images/Overview_img71.jpeg)

## Image

Image that will be displayed on the control.

![](Overview_images/Overview_img73.jpeg) 


The Images can be added to the ButtonAdv control in two ways. Either Image property can be used or the below properties.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
ImageList</td><td>
Sets the image list used for this control.</td></tr>
<tr>
<td>
ImageAlign</td><td>
Sets the alignment of the image inside the control. The options are,<br/>
TopLeft,<br/>
TopCenter,<br/>
TopRight<br/>
MiddleLeft,<br/>
MiddleCenter,<br/>
MiddleRight,<br/>
BottomLeft,<br/>
BottomCenter and<br/>
BottomRight.</td></tr>
<tr>
<td>
ImageIndex</td><td>
Specifies the index for the image in the control.</td></tr>
<tr>
<td>
Text</td><td>
Sets the text for the ButtonAdv.</td></tr>
<tr>
<td>
TextAlign</td><td>
Sets the alignment of the text in the control.  The options are,<br/>
TopLeft,<br/>
TopCenter,<br/>
TopRight<br/>
MiddleLeft,<br/>
MiddleCenter,<br/>
MiddleRight,<br/>
BottomLeft,<br/>
BottomCenter and<br/>
BottomRight.</td></tr>
<tr>
<td>
TextImageRelation</td><td>
Sets the relative location of the image to the text. The options are,<br/>
Overlay,<br/>
ImageBeforeText,<br/>
TextBeforeImage,<br/>
ImageAboveText and<br/>
TextAboveImage.</td></tr>
</table>

![](Overview_images/Overview_img73.jpeg) 

N> The Image settings will be effective only when [ButtonType](http://help.syncfusion.com/windowsforms/buttonadv/buttonadvappearnce#button-types) is set to Normal.

{% tabs %}
{% highlight c# %}

this.btnAlignment.Image = ((System.Drawing.Bitmap)(resources.GetObject("btnAlignment.Image")));
this.btnAlignment.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
this.btnAlignment.ImageIndex = 3;
this.btnAlignment.ImageList = this.imageList1;

{% endhighlight %}

{% highlight vb %}

Me.btnAlignment.Image = CType((resources.GetObject("btnAlignment.Image")), System.Drawing.Bitmap) 
Me.btnAlignment.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft 
Me.btnAlignment.ImageIndex = 3 
Me.btnAlignment.ImageList = Me.imageList1

{% endhighlight %}
{% endtabs %}

![](Overview_images/Overview_img75.jpeg) 

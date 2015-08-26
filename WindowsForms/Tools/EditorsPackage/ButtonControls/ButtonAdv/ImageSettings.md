---
layout: post
title: Editors-Package
description: editors package
platform: WindowsForms
control: Tools
documentation: ug
---

# Image Settings


ButtonAdv supports two types of images. They are,

* BackgroundImage
* Image

BackgroundImage

BackgroundImage is the image used as the Background for the control, which is set using the BackgroundImage property. This BackgroundImage can be laid in various manner with the BackgroundImageLayout property.

 ![](Overview_images/Overview_img71.jpeg)

Image

Image that will be displayed on the control.

![](Overview_images/Overview_img73.jpeg) 



The Images can be added to the ButtonAdv control in two ways. Either Image property can be used or the below properties.

_Table_ _137__: Property Table_

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
ImageList</td><td>
Sets the imagelist used for this control.</td></tr>
<tr>
<td>
ImageAlign</td><td>
Sets the alignment of the image inside the control. The options are,
TopLeft,
TopCenter,
TopRight
MiddleLeft,
MiddleCenter,
MiddleRight,
BottomLeft,
BottomCenter and
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
Sets the alignment of the text in the control.  The options are,
TopLeft,
TopCenter,
TopRight
MiddleLeft,
MiddleCenter,
MiddleRight,
BottomLeft,
BottomCenter and
BottomRight.</td></tr>
<tr>
<td>
TextImageRelation</td><td>
Sets the relative location of the image to the text. The options are,
Overlay,
ImageBeforeText,
TextBeforeImage,
ImageAboveText and
TextAboveImage.</td></tr>
</table>


![](Overview_images/Overview_img73.jpeg) 



 _Note: The Image settings will be effective only when_ ButtonType _is set to Normal._



{%highlight c#%}

this.btnAlignment.Image = ((System.Drawing.Bitmap)(resources.GetObject("btnAlignment.Image")));

this.btnAlignment.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;

this.btnAlignment.ImageIndex = 3;

this.btnAlignment.ImageList = this.imageList1;

{%endhighlight%}

{%highlight vbnet%}



Me.btnAlignment.Image = CType((resources.GetObject("btnAlignment.Image")), System.Drawing.Bitmap) 

Me.btnAlignment.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft 

Me.btnAlignment.ImageIndex = 3 

Me.btnAlignment.ImageList = Me.imageList1

{%endhighlight%}

![](Overview_images/Overview_img75.jpeg) 

---
layout: post
title: Ribbon-Gallery| WindowsForms | Syncfusion
description:  ribbon gallery
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Ribbon Gallery

Essential Tools RibbonControlAdv provides options to add a collection of items and store them into a gallery. A gallery can be added to a ToolStripTabItem using Items Collection Editor.

![](Ribbon-Gallery_images/Ribbon-Gallery_img1.jpeg)


## Adding Controls to the Gallery

Using the `Item` property, Items Collection Editor opens, which lets you add items to the gallery.

![](Ribbon-Gallery_images/Ribbon-Gallery_img2.jpeg)


## Appearance

The ToolStripItems can be aligned to right or left using Alignment property.

{% tabs %}

{% highlight c# %}

{% endhighlight %}

{% highlight vb %}

{% endhighlight %}

{% endtabs %}

### Border Settings

<table>
<tr>
<td>
**Property**<br/><br/></td><td>
**Description**<br/><br/></td></tr>
<tr>
<td>
BorderStyle<br/><br/></td><td>
Sets the border style for the ToolStripGallery. The options are,<br/><br/>None (default) and<br/><br/>Single.<br/><br/></td></tr>
</table>
### Foreground Settings

<table>
<tr>
<td>
**Property**<br/><br/></td><td>
**Description**<br/><br/></td></tr>
<tr>
<td>
Font<br/><br/></td><td>
Sets the font style for the display text.<br/><br/></td></tr>
<tr>
<td>
ForeColor<br/><br/></td><td>
Sets the fore color for the display text.<br/><br/></td></tr>
</table>
### Scroller Settings

<table>
<tr>
<td>
**Property**<br/><br/></td><td>
**Description**<br/><br/></td></tr>
<tr>
<td>
ScrollerType<br/><br/></td><td>
Sets the scroller type for the Gallery. The types available are,<br/><br/>StandardType and<br/><br/>CompactType.<br/><br/></td></tr>
</table>
![](Ribbon-Gallery_images/Ribbon-Gallery_img3.jpeg)


![](Ribbon-Gallery_images/Ribbon-Gallery_img4.jpeg)


### RTL Support

<table>
<tr>
<td>
**Property**<br/><br/></td><td>
**Description**<br/><br/></td></tr>
<tr>
<td>
RightToLeft<br/><br/></td><td>
Indicates whether the item should right to left for RTL languages.<br/><br/></td></tr>
<tr>
<td>
RightToLeftAutoMirrorImage<br/><br/></td><td>
Specifies whether image should mirror when RightToLeft is enabled for the item.<br/><br/></td></tr>
</table>
## Caption Settings

Caption for a ToolStripGallery can be visible by settings the `ShowCaption` property to true.

<table>
<tr>
<td>
**Property**<br/><br/></td><td>
**Description**<br/><br/></td></tr>
<tr>
<td>
ShowCaption<br/><br/></td><td>
Sets the visibility of the caption.<br/><br/></td></tr>
<tr>
<td>
CaptionText<br/><br/></td><td>
Sets the caption text.<br/><br/></td></tr>
</table>
{% tabs %}

{% highlight c# %}

this.toolStripGallery1.CaptionText = "Quick Steps";

this.toolStripGallery1.ShowCaption = true;

{% endhighlight %}

{% highlight vb %}

Me.toolStripGallery1.CaptionText = "Quick Steps" 

Me.toolStripGallery1.ShowCaption = True

{% endhighlight %}

{% endtabs %}

## Item Customization

ToolStripGallery lets you customize the ToolStrip items added to the Gallery using the below properties. 

### Appearance Settings

<table>
<tr>
<td>
**Property**<br/><br/></td><td>
**Description**<br/><br/></td></tr>
<tr>
<td>
ItemBackColor<br/><br/></td><td>
Sets the back color for the items.<br/><br/></td></tr>
</table>
### Style Settings

<table>
<tr>
<td>
**Property**<br/><br/></td><td>
**Description**<br/><br/></td></tr>
<tr>
<td>
ItemDisplayStyle<br/><br/></td><td>
Sets the display style of the items. The options are,<br/><br/>Text, <br/><br/>Image and <br/><br/>ImageAndText.<br/><br/></td></tr>
<tr>
<td>
ItemTextImageRelation<br/><br/></td><td>
Sets the text image relation of the items. The options are,<br/><br/>{{'____'| markdownify }}Overlay, <br/><br/>ImageAboveText, <br/><br/>TextAboveImage, <br/><br/>ImageBeforeText and<br/><br/>TextBeforeImage.<br/><br/></td></tr>
<tr>
<td>
ItemImageSize<br/><br/></td><td>
Sets the image size for the items.<br/><br/></td></tr>
<tr>
<td>
ItemMargin<br/><br/></td><td>
Sets margin for the items.<br/><br/></td></tr>
<tr>
<td>
ItemPadding<br/><br/></td><td>
Sets padding between the items.<br/><br/></td></tr>
<tr>
<td>
ItemSize<br/><br/></td><td>
Sets the Item size.<br/><br/></td></tr>
</table>
{% tabs %}

{% highlight c# %}

this.toolStripGallery1.ItemBackColor = System.Drawing.Color.SteelBlue;

this.toolStripGallery1.ItemDisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;

this.toolStripGallery1.ItemImageSize = new System.Drawing.Size(16, 16);

this.toolStripGallery1.ItemMargin = new System.Windows.Forms.Padding(2);

this.toolStripGallery1.ItemPadding = new System.Windows.Forms.Padding(2);

this.toolStripGallery1.ItemSize = new System.Drawing.Size(40, 46);

{% endhighlight %}

{% highlight vb %}

Me.toolStripGallery1.ItemBackColor = System.Drawing.Color.SteelBlue

Me.toolStripGallery1.ItemDisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image 

Me.toolStripGallery1.ItemImageSize = New System.Drawing.Size(16, 16) 

Me.toolStripGallery1.ItemMargin = New System.Windows.Forms.Padding(2) 

Me.toolStripGallery1.ItemPadding = New System.Windows.Forms.Padding(2) 

Me.toolStripGallery1.ItemSize = New System.Drawing.Size(40, 46)

{% endhighlight %}

{% endtabs %}

![](Ribbon-Gallery_images/Ribbon-Gallery_img5.jpeg)


## ToolTips 

The Gallery can display a tooltip when the mouse is moved over the Gallery at runtime. This is enabled through `AutoToolTip` property. A default text will be displayed, which can be modified by providing the text in `ToolTipText` property. 

{% tabs %}

{% highlight c# %}

//Enabling and setting the tooltip

this.toolStripGallery1.AutoToolTip = true;

this.toolStripGallery1.ToolTipText = "New ToolStrip text";


{% endhighlight %}

{% highlight vb %}

'Enabling and setting the tooltip

Me.toolStripGallery1.AutoToolTip = True

Me.toolStripGallery1.ToolTipText = "New ToolStrip text"


{% endhighlight %}

{% endtabs %}

### Show ToolTips for individual Gallery Items 

RibbonControlAdv now supports showing ToolTips for individual Gallery Item when moving the mouse over them. Earlier ToolTips were not supported for individual gallery items. Now you can specify the ToolTipText for individual Gallery Items on the ToolTipText property of the respective toolStripGallery Item.

{% tabs %}

{% highlight c# %}

//Add tooltip.

this.toolStripGallery1.Items[0].ToolTipText = "No spacing";

this.toolStripGallery1.Items[1].ToolTipText = "Heading 1";

{% endhighlight %}

{% highlight vb %}

'Add tooltip.

Me.toolStripGallery1.Items(0).ToolTipText = "No spacing"

Me.toolStripGallery1.Items(1).ToolTipText = "Heading 1"

{% endhighlight %}

{% endtabs %}


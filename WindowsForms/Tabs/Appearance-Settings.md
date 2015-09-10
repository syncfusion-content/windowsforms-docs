---
layout: post
title: Appearance-Settings | WindowsForms | Syncfusion
description: appearance settings
platform: WindowsForms
control: TabsPackage 
documentation: ug
---

# Appearance Settings

The various appearance settings for TabControlAdv are discussed in this section. 

It includes the below topics.

## Background Settings

This section discusses the various Background Settings available in TabControlAdv.

It includes the below topics.

### BackgroundImage Settings

Essential Tabs provide a set of options to customize the TabControlAdv with images. 

The TabControlAdv can have,

* Images inside the TabItems.
* Images outside the TabBounds.
* Image as Background for the TabPage.

### Images in TabItems

To set images to the TabItems, add an ImageListControl and populate it with the required images. Then set the ImageIndex property of the TabPage to one of the indices, to display the corresponding image to the left of the text by default.

![](Appearance-Settings_images/Appearance-Settings_img1.jpeg)



ImageAlignmentR of the TabControlAdv allows you to set the tab's text and image. By default the image appears to the left and the text appears to the right. This setting can be changed using one of the below given options.

_Table_ _825_: Property Table

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
ImageAlignmentR</td><td>
Specifies the alignment of the image relative to the text. The options include,LeftOfText,RightOfText,AboveText,BelowText andOverlap.</td></tr>
<tr>
<td>
ImageIndex</td><td>
Gets / sets the image for the tabitem.</td></tr>
</table>
Code snippets showing the Image Settings

{% highlight c# %}



this.tabControlAdv1.ImageAlignmentR = Syncfusion.Windows.Forms.Tools.RelativeImageAlignment.RightOfText;

this.tabPageAdv1.ImageIndex = 0;

{% endhighlight %}

{% highlight vbnet %}



Me.tabControlAdv1.ImageAlignmentR = Syncfusion.Windows.Forms.Tools.RelativeImageAlignment.RightOfText

Me.tabPageAdv1.ImageIndex = 0

{% endhighlight %}

### Images outside the TabBounds

TabControlAdv can have images set outside the TabBounds.

![](Appearance-Settings_images/Appearance-Settings_img2.jpeg)



To move the image outside the TabBounds, set the below given properties.

_Table_ _826_: Property Table

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
ImageOffset</td><td>
Adjusts Y-axis position of the image.</td></tr>
<tr>
<td>
AdjustTopGap</td><td>
Adjusts the gap between the tabcontroladv's top and tabs.</td></tr>
<tr>
<td>
LevelTextAndImage</td><td>
Indicates whether the text and image should be in the same level.</td></tr>
<tr>
<td>
ItemSize</td><td>
Sets the size of the tabs.</td></tr>
</table>

### Background Image for TabPages

The below properties sets the background image for the pages.

_Table_ _827_: Property Table

<table>
<tr>
<th>
TabPageAdv Property</th><th>
Description</th></tr>
<tr>
<td>
BackgroundImage</td><td>
Specifies the background image for the tabpage.</td></tr>
<tr>
<td>
BackgroundImageLayout</td><td>
Specifies the layout for the background image when set. The options include:None,Tile,Center,Stretch andZoom.</td></tr>
</table>


{% highlight c# %}



this.tabPageAdv1.BackgroundImage = imageList1.Images[0];

this.tabPageAdv1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Right;

{% endhighlight %}

{% highlight vbnet %}



Private Me.tabPageAdv1.BackgroundImage = imageList1.Images(0)

Private Me.tabPageAdv1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Right

{% endhighlight %}

### DisableInactivePageImage

The DisableInactivePageImage property specifies the value which determines whether the image should be disabled when the TabPage is not selected. The default value is set to True.

_Table_ _828_: Property Table

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
DisableInactivePageImage</td><td>
Gets / sets the value which determines whether the image should be disabled when the TabPage is not selected.</td></tr>
</table>


{% highlight c# %}

this.tabPageAdv1.DisableInactivePageImage = imageList1.Images[0];

{% endhighlight %}


{% highlight vbnet %}

Private Me.tabPageAdv1.DisableInactivePageImage = imageList1.Images(0)

{% endhighlight %}

#### BackColor Settings for the TabControl

The look and feel of the tabcontrols can be customized using the below Tab and Panel properties. 

_Table_ _829_: Property Table

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
ActiveTabColor</td><td>
Specifies the backcolor for the selected tab.</td></tr>
<tr>
<td>
BackColor</td><td>
Specifies the backcolor for all the tabpages.</td></tr>
<tr>
<td>
InactiveTabColor</td><td>
Specifies the backcolor to be used for the inactive tabs.</td></tr>
<tr>
<td>
TabPanelBackColor</td><td>
Specifies the color for the tabpanel over which the tabitems are laid.</td></tr>
</table>
BackColor Settings for the TabItems

The backcolor of the individual tabitems can be customized by setting the TabBackColor property of the corresponding tabpages.

_Table_ _830_: Property Table

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
TabBackColor</td><td>
Specifies the backcolor for the tabitem.</td></tr>
</table>


{% highlight c# %}



this.tabControlAdv1.ActiveTabColor = System.Drawing.Color.Ivory;

this.tabControlAdv1.InactiveTabColor = System.Drawing.Color.Silver;

this.tabControlAdv1.TabPanelBackColor = System.Drawing.Color.White;

this.tabControlAdv1.BackColor = System.Drawing.Color.Yellow;

this.tabPageAdv1.TabBackColor = System.Drawing.Color.Pink;

{% endhighlight %}

{% highlight vbnet %}


Private Me.tabControlAdv1.ActiveTabColor = System.Drawing.Color.Ivory

Private Me.tabControlAdv1.InactiveTabColor = System.Drawing.Color.Silver

Private Me.tabControlAdv1.TabPanelBackColor = System.Drawing.Color.White

Private Me.tabControlAdv1.BackColor = System.Drawing.Color.Yellow

Private Me.tabPageAdv1.TabBackColor = System.Drawing.Color.Pink

{% endhighlight %}


 ![](Appearance-Settings_images/Appearance-Settings_img3.jpeg)



 ![](Appearance-Settings_images/Appearance-Settings_img4.png) 

## Foreground Settings

This section discusses the various Foreground Settings available in TabControlAdv.

It includes the below topics.

### Font Settings

Font Settings for the TabControl

The font settings for the TabControlAdv can be controlled through Font and ActiveTabFont properties.

_Table_ _831_: Property Table

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
ActiveTabFont</td><td>
Specifies the font of the selected tabitem text.</td></tr>
<tr>
<td>
Font</td><td>
Specifies the font for all the tabitems' text.</td></tr>
</table>


{% highlight c# %}



this.tabControlAdv1.ActiveTabFont = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

this.tabControlAdv1.Font = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

{% endhighlight %}

{% highlight vbnet %}



Private Me.tabControlAdv1.ActiveTabFont = New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, (CByte(0)))

Private Me.tabControlAdv1.Font = New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (CByte(0)))

{% endhighlight %}

Font Settings for the TabItems

_Table_ _832_: Property Table

<table>
<tr>
<th>
TabPageAdv Property</th><th>
Description</th></tr>
<tr>
<td>
TabFont</td><td>
Specifies the font for the tabitem.</td></tr>
</table>


{% highlight c# %}

this.tabPageAdv1.TabFont = new System.Drawing.Font("Trebuchet MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

{% endhighlight %}

{% highlight vbnet %}

Me.tabPageAdv1.TabFont = New System.Drawing.Font("Trebuchet MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType((0), Byte))

{% endhighlight %}


![](Appearance-Settings_images/Appearance-Settings_img5.jpeg)



To set image for tab items, see [BackgroundImage Settings](#backgroundimage-settings).

### ForeColor Settings

ForeColor Settings for the TabItems

The text color of the tabitems can be customized by setting the TabForeColor property of the corresponding tabpages.

_Table_ _833_: Property Table

<table>
<tr>
<th>
TabPageAdv Property</th><th>
Description</th></tr>
<tr>
<td>
TabForeColor</td><td>
Specifies the color for the text of the tabitem.</td></tr>
</table>


{% highlight c# %}

this.tabPageAdv1.TabForeColor = System.Drawing.Color.Sienna;

{% endhighlight %}

{% highlight vbnet %}

Private Me.tabPageAdv1.TabForeColor = System.Drawing.Color.Sienna

{% endhighlight %}


![](Appearance-Settings_images/Appearance-Settings_img6.jpeg)



## Border for TabControlAdv

This section discusses the border settings available for the TabControlAdv when TabStyles is set to VS2008Style. Set TabControlAdv.BorderVisible property to true to display the control border. By default it is false.

{% highlight c# %}

this.tabControlAdv1.BorderVisible = true;

{% endhighlight %}

{% highlight vbnet %}

Me.tabControlAdv1.BorderVisible = True

{% endhighlight %}

![](Appearance-Settings_images/Appearance-Settings_img7.jpeg)



We can set width for the border using BorderWidth property. Default value is 5.

{% highlight c# %}



this.tabControlAdv1.BorderWidth = 10;

{% endhighlight %}


{% highlight vbnet %}



Me.tabControlAdv1.BorderWidth = 10

{% endhighlight %}

 ![](Appearance-Settings_images/Appearance-Settings_img8.jpeg)



N> These border properties are especially implemented for _"VS2008Style"_ [TabStyles](/windowsforms/tabs/styles-settings#tabstyles).


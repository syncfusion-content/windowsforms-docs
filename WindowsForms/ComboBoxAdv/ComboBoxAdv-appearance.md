---
layout: post
title: ComboBoxAdv-appearance
description: comboboxadv appearance
platform: windowsforms
control: Editors Package
documentation: ug
---

# ComboBoxAdv appearance

This section discusses the below topics. 

## Border Styles

This section discusses the border settings for the ComboBoxAdv control. 

Table 220: Properties

<table>
<tr>
<th>
ComboBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyle</td><td>
Specifies the 3D BorderStyle for the control.The options are,
<ul><li> RaisedInner</li><li> RaisedOuter</li><li> Raised</li><li>Sunken(Default)</li><li> SunkenInner</li> SunkenOuter</li><li>Flat</li><li> Bump and</li><li> Adjust</li></ul>. <br/>FlatStyle should be set to "Standard" to make this property setting effective.</td></tr>
<tr>
<td>
BorderSides</td><td>
Specifies the BorderSides of the control.The options are, <ul><li>Left</li><li> Top</li><li>Right</li><li> Bottom</li><li> Middle and</li><li> All(Default)</li> </ul></td></tr>
<tr>
<td>
&lt;br&gt;FlatStyle</td><td>
Specifies the Flat Style. The options are* {{ 'Flat,' | markdownify }}* {{ 'Standard (Default) and'| markdownify }}* {{ 'System.' | markdownify }}</td></tr>
<tr>
<td>
&lt;br&gt;FlatBorderColor</td><td>
Specifies the color with which flat border should be drawn. FlatStyle must be set to 'Flat' to get the color effect.</td></tr>
</table>


{% highlight c# %}

//Border appearance ssettings

this.comboBoxAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.Flat;

this.comboBoxAdv1.BorderSides = System.Windows.Forms.Border3DSide.All;

this.comboBoxAdv1.FlatStyle = Syncfusion.Windows.Forms.Tools.ComboFlatStyle.Flat;

this.comboBoxAdv1.FlatBorderColor = System.Drawing.Color.Blue;

{% endhighlight %}

{% highlight vbnet %}

'Border appearance settings

Me.comboBoxAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.Flat

Me.comboBoxAdv1.BorderSides = System.Windows.Forms.Border3DSide.All

Me.comboBoxAdv1.FlatStyle = Syncfusion.Windows.Forms.Tools.ComboFlatStyle.Flat

Me.comboBoxAdv1.FlatBorderColor = System.Drawing.Color.Blue

{% endhighlight %}

![](Overview_images/Overview_img307.jpeg) 



## Visual Styles

ComboBoxAdv supports visual styles such as Default, OfficeXP, Office2003, Office2007, Office2007Outlook, Office2010, VS2005 , VS2007 and Metro with all three color schemes. The style can be set using Style property.



{% highlight c# %}

//To set Default Visual Style

this.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Default;

//To set Office2003 Visual Style

this.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2003;

//To set OfficeXP Visual Style

this.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.OfficeXP;

//To set VS2005 Visual Style

this.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.VS2005;

//To set VS2010 Visual Style

this.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.VS2010;

//To set Office2007 Visual Style

this.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;

//To set Office2007Outlook Visual Style

this.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook;

//To set Office2010 Visual Style

this.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;

//To set Metro Visual Style

this.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Metro;

{% endhighlight %}

{% highlight vbnet %}

'To set Default Visual Style

Me.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.[Default]

'To set Office2003 Visual Style

Me.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2003

'To set OfficeXP Visual Style

Me.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.OfficeXP

'To set VS2005 Visual Style

Me.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.VS2005

'To set VS2010 Visual Style

Me.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.VS2010

'To set Office2007 Visual Style

Me.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007

'To set Office2007Outlook Visual Style

Me.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook

'To set Office2010 Visual Style

Me.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010

'To set Metro Visual Style

Me.comboBoxAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Metro

{% endhighlight %}

![](Overview_images/Overview_img308.png) 

{% highlight c# %}

//To set Blue Color scheme

this.comboBoxAdv3.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

//To set Silver Color scheme

this.comboBoxAdv6.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

//To set Black Color scheme

this.comboBoxAdv9.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Black;

{% endhighlight %}

{% highlight vbnet %}

'To set Blue Color scheme

Me.comboBoxAdv1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Blue

'To set Silver Color scheme

Me.comboBoxAdv1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Silver

'To set Black Color scheme

Me.comboBoxAdv1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight %}



![](Overview_images/Overview_img309.png)



### Custom Colors

You can also apply custom colors to the ComboBoxAdv control by setting Office2007ColorTheme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.

{% highlight c# %}

this.comboBoxAdv1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Orchid);

{% endhighlight %}

{% highlight vbnet %}

Me.comboBoxAdv1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed

Office2007Colors.ApplyManagedColors(Me, Color.Orchid)

{% endhighlight %}

![](Overview_images/Overview_img310.png) 



## Background Settings

When ComboBoxAdv control is set with some style, theme background is drawn. You can override this background with the BackColor property using the IgnoreThemeBackground property. When IgnoreThemeBackground is set to true, the control ignores the theme background and draws the backcolor as the background.

{% highlight c# %}

//Background settings

this.comboBoxAdv1.BackColor = System.Drawing.SystemColors.Info;

this.comboBoxAdv1.IgnoreThemeBackground = true;

{% endhighlight %}

{% highlight vbnet %}

'Background settings

Me.comboBoxAdv1.BackColor = System.Drawing.SystemColors.Info

Me.comboBoxAdv1.IgnoreThemeBackground = True

{% endhighlight %}

![](Overview_images/Overview_img311.jpeg) 



## Image Settings

Images can be easily associated with the items of the ComboBoxAdv control using the following properties. 

_Table_ _221_: _Properties_

<table>
<tr>
<th>
ComboBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
ImageList</td><td>
Specifies the imagelist that is used for the ComboBoxAdv control.</td></tr>
<tr>
<td>
ShowImageInTextBox</td><td>
It sets the selected image in the textbox of the ComboBoxAdv control.</td></tr>
<tr>
<td>
ItemsImageIndexes</td><td>
Invokes an editor and lets you to set image index for individual dropdown items.</td></tr>
</table>

{% highlight c# %}

//ImageList for the ComboBoxAdv

this.comboBoxAdv1.ImageList = this.imageList1;

this.comboBoxAdv1.ItemsImageIndexes.Add(new Syncfusion.Windows.Forms.Tools.ComboBoxAdv.ImageIndexItem(this.comboBoxAdv1, "Pointer", 0));

{% endhighlight %}

{% highlight vbnet %}

'ImageList for the ComboBoxAdv

Me.comboBoxAdv1.ImageList = Me.imageList1

Me.comboBoxAdv1.ItemsImageIndexes.Add(New Syncfusion.Windows.Forms.Tools.ComboBoxAdv.ImageIndexItem(Me.comboBoxAdv1, "Pointer", 0))

{% endhighlight %}

### Image in TextBox

The following code example is used to show the images together with the selected text in the TextArea of the ComboBoxAdv control.

{% highlight c# %}

// Show the images in the TextArea.

this.comboBoxAdv1.ShowImageInTextBox = true

{% endhighlight %}

{% highlight vbnet %}

'Show the images in the TextArea.

Me.comboBoxAdv1.ShowImageInTextBox = True

{% endhighlight %}

![](Overview_images/Overview_img312.jpeg)



## Customizable ComboBoxAdv height

ComboBoxAdv allows you to customize the height of the Display area, making more space to display larger images and text items by setting the TextBoxHeight property of the ComboBox.



{% highlight c# %}

// Sets the height of the ComboBox.

this.comboBoxAdv1.TextBoxHeight = 80;

{% endhighlight %}

{% highlight vbnet %}

'Sets the height of the ComboBox.

Me.comboBoxAdv1.TextBoxHeight = 80

{% endhighlight %}
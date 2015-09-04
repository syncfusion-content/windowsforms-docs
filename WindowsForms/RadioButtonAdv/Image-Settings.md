---
layout: post
title: Image-Settings
description: image settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Image Settings

The image settings of the RadioButtonAdv control have been discussed in this section.

Images can be set to the RadioButtonAdv when it is in the Checked, Unchecked or Indeterminate state. The RadioButtonAdv allows us to set the following properties in order to display images.

Table 417 : Property Table

<table>
<tr>
<th>
RadioButtonAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
ImageCheckBox</td><td>
Indicates whether the RadioButton will be drawn using the images provided.</td></tr>
<tr>
<td>
ImageCheckBoxSize</td><td>
Gets / sets the size of the ImageCheckBox.ImageCheckbox property must be set to 'True'.</td></tr>
<tr>
<td>
CheckedImage</td><td>
Gets / sets the image used to draw the RadioButton when checked and mouse not over.</td></tr>
<tr>
<td>
UncheckedImage</td><td>
Gets / sets the image used to draw the RadioButton when unchecked and mouse not over.</td></tr>
<tr>
<td>
DisabledImage</td><td>
Gets / sets the image used to draw the RadioButton when disabled.</td></tr>
<tr>
<td>
StretchImage</td><td>
Indicates whether the state images of the RadioButton are stretched.</td></tr>
</table>

N> Before setting the images, make sure the ImageCheckBox property is set to 'True'.

{% highlight c# %}



this.radioButtonAdv1.ImageCheckBox = true;

this.radioButtonAdv1.ImageCheckBoxSize = new System.Drawing.Size(15, 15);

this.radioButtonAdv1.CheckedImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.CheckedImage")));

this.radioButtonAdv1.UncheckedImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.UncheckedImage")));

this.radioButtonAdv1.DisabledImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.DisabledImage")));

this.radioButtonAdv1.StretchImage = false;

{% endhighlight %}

{% highlight vbnet %}



Me.radioButtonAdv1.ImageCheckBox = True

Me.radioButtonAdv1.ImageCheckBoxSize = New System.Drawing.Size(15, 15)

Me.radioButtonAdv1.CheckedImage = (CType(Resources.GetObject("checkBoxAdv1.CheckedImage"), System.Drawing.Image))

Me.radioButtonAdv1.UncheckedImage = (CType(Resources.GetObject("checkBoxAdv1.UncheckedImage"), System.Drawing.Image))

Me.radioButtonAdv1.DisabledImage = (CType(Resources.GetObject("checkBoxAdv1.DisabledImage"), System.Drawing.Image))

Me.radioButtonAdv1.StretchImage = False

{% endhighlight %}

 ![](Overview_images/Overview_img641.jpeg)

#### Images displayed during Mouse Hover

Images can also be set when the mouse is hovered over the RadioButtonAdv control.

Table 418 : Property Table

<table>
<tr>
<th>
RadioButtonAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
MouseOverCheckedImage</td><td>
Gets / sets the image used to draw the RadioButton when checked and mouse over.</td></tr>
<tr>
<td>
MouseOverUncheckedImage</td><td>
Gets / sets the image used to draw the RadioButton when unchecked and mouse over.</td></tr>
</table>


{% highlight c# %}



this.radioButtonAdv1.MouseOverCheckedImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.MouseOverCheckedImage")));

this.radioButtonAdv1.MouseOverUncheckedImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.MouseOverUncheckedImage")));
{% endhighlight %}


{% highlight vbnet %}


Me.checkBoxAdv1.MouseOverCheckedImage = (CType(Resources.GetObject("checkBoxAdv1.MouseOverCheckedImage"), System.Drawing.Image))

Me.checkBoxAdv1.MouseOverUncheckedImage = (CType(Resources.GetObject("checkBoxAdv1.MouseOverUncheckedImage"), System.Drawing.Image))

{% endhighlight %}

![](Overview_images/Overview_img642.jpeg)

A Sample which demonstrates the ImageCheckBox property of RadioButtonAdv is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_
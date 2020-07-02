---
layout: post
title: Image-Settings | WindowsForms | Syncfusion
description: This section gives the detailed description about how to use the image in CheckBoxAdv control for mouse hover and each CheckBox state. 
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Image Settings

You can set the images to the [CheckBoxAdv](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) when it is in the Checked, Unchecked or Indeterminate state using [ImageCheckBox](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~ImageCheckBox.html),[ImageCheckBoxSize](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~ImageCheckBoxSize.html),[CheckedImage](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~CheckedImage.html),[UncheckedImage](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~UncheckedImage.html),[IndeterminateImage](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckBoxAdv~IndeterminateImage.html),[DisabledImage](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~DisabledImage.html) and [StretchImage](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~StretchImage.html) properties.

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
ImageCheckBox</td><td>
Indicates whether the CheckBox will be drawn using the images provided.</td></tr>
<tr>
<td>
ImageCheckBoxSize</td><td>
Gets or sets the size of the ImageCheckBox.ImageCheckbox property must be set to 'True'.</td></tr>
<tr>
<td>
CheckedImage</td><td>
Gets or sets the image used to draw the CheckBox when checked and mouse not over.</td></tr>
<tr>
<td>
UncheckedImage</td><td>
Gets or sets the image used to draw the CheckBox when unchecked and mouse not over.</td></tr>
<tr>
<td>
IndeterminateImage</td><td>
The image used to draw the CheckBox when indeterminate and mouse not over.</td></tr>
<tr>
<td>
DisabledImage</td><td>
Gets or sets the image used to draw the CheckBox when disabled.</td></tr>
<tr>
<td>
StretchImage</td><td>
Indicates whether the state images of the CheckBox are stretched.</td></tr>
</table>

N> Before setting the images, make sure the [ImageCheckBox](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~ImageCheckBox.html) property is set to 'True'.

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.ImageCheckBox = true;
this.checkBoxAdv1.ImageCheckBoxSize = new System.Drawing.Size(15, 15);
this.checkBoxAdv1.CheckedImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.CheckedImage")));

this.checkBoxAdv1.UncheckedImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.UncheckedImage")));
this.checkBoxAdv1.IndeterminateImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.IndeterminateImage")));
this.checkBoxAdv1.DisabledImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.DisabledImage")));
this.checkBoxAdv1.StretchImage = false;

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.ImageCheckBox = True
Me.checkBoxAdv1.ImageCheckBoxSize = New System.Drawing.Size(15, 15)
Me.checkBoxAdv1.CheckedImage = (CType(Resources.GetObject("checkBoxAdv1.CheckedImage"), System.Drawing.Image))

Me.checkBoxAdv1.UncheckedImage = (CType(Resources.GetObject("checkBoxAdv1.UncheckedImage"), System.Drawing.Image))
Me.checkBoxAdv1.IndeterminateImage = (CType(Resources.GetObject("checkBoxAdv1.IndeterminateImage"), System.Drawing.Image))
Me.checkBoxAdv1.DisabledImage = (CType(Resources.GetObject("checkBoxAdv1.DisabledImage"), System.Drawing.Image))
Me.checkBoxAdv1.StretchImage = False

{% endhighlight %}
{% endtabs %}

![Windows forms CheckBoxAdv images displayed in control when it is in checked](Overview_images/CheckBoxAdv_image.jpeg)

## Images displayed during Mouse Hover

You can set the image in [CheckBoxAdv](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control when the mouse is hovered over it using [MouseOverCheckedImage](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~MouseOverCheckedImage.html),[MouseOverIndetermImage](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckBoxAdv~MouseOverIndetermImage.html) and [MouseOverUncheckedImage](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~MouseOverUncheckedImage.html) properties.

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
MouseOverCheckedImage</td><td>
Gets or sets the image used to draw the CheckBox when checked and mouse over.</td></tr>
<tr>
<td>
MouseOverIndetermImage</td><td>
Gets or sets the image used to draw the CheckBox when indeterminate and mouse over.</td></tr>
<tr>
<td>
MouseOverUncheckedImage</td><td>
Gets or sets the image used to draw the CheckBox when unchecked and mouse over.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.MouseOverCheckedImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.MouseOverCheckedImage")));
this.checkBoxAdv1.MouseOverIndetermImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.MouseOverIndetermImage")));
this.checkBoxAdv1.MouseOverUncheckedImage = ((System.Drawing.Image)(resources.GetObject("checkBoxAdv1.MouseOverUncheckedImage")));

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.MouseOverCheckedImage = (CType(Resources.GetObject("checkBoxAdv1.MouseOverCheckedImage"), System.Drawing.Image))
Me.checkBoxAdv1.MouseOverIndetermImage = (CType(Resources.GetObject("checkBoxAdv1.MouseOverIndetermImage"), System.Drawing.Image))
Me.checkBoxAdv1.MouseOverUncheckedImage = (CType(Resources.GetObject("checkBoxAdv1.MouseOverUncheckedImage"), System.Drawing.Image))

{% endhighlight %}
{% endtabs %}

 ![Windows forms CheckBoxAdv images displayed during Mouse hovered on control](Overview_images/CheckBoxAdv_changeimage.jpeg)


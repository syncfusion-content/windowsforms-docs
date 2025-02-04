---
layout: post
title: ColorPickerUIAdv Appearance in WinForms ColorPicker | Syncfusion®
description: Learn about ColorPickerUIAdv Appearance support in Syncfusion® Windows Forms Color Picker (ColorPickerUIAdv) control and more details.
platform: windowsforms
control: ColorPickerUIAdv 
documentation: ug
---
# ColorPickerUIAdv Appearance in Windows Forms Color Picker


## Style Settings

### Visual Style

The appearance and behavior settings, available for the ColorPickerUIAdv are discussed in this section. This control supports the below VisualStyles

* Default
* Office2007
* Office2010
* Metro
* Office2016Colorful
* Office2016White
* Office2016Black
* Office2016DarkGray

The style can be applied using the Style property. The following code example allows you to set the style for the ColorPickerUIAdv.

{% tabs %}
{% highlight c# %}

//Sets the Office2016 colorful style for ColorPickerUIAdv
this.colorPickerUIAdv1.Style = Syncfusion.Windows.Forms.Tools.ColorPickerUIAdv.visualstyle.Office2016Colorful;

{% endhighlight %}

{% highlight vb %}

'Sets the Office2016 colorful style for ColorPickerUIAdv
Me.colorPickerUIAdv1.Style = Syncfusion.Windows.Forms.Tools.ColorPickerUIAdv.visualstyle.Office2016Colorful

{% endhighlight %}
{% endtabs %}

![Windows forms ColorPickerUIAdv visualstyle](ColorPickerUIAdv_Images/ColorPickerStyle.jpeg)

### Office2007 Color Schemes

By default ColorPickerUIAdv control has Office2007 look and feel. 

<table>
<tr>
<th>
ColorPickerUIAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
UseOffice2007Style</td><td>
Office 2007 style can be enabled or disabled using this property. By default it is true.</td></tr>
<tr>
<td>
Office2007Theme</td><td>
Sets the color scheme for the Office2007 Style.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

colorPickerUIAdv1.UseOffice2007Style = true;

//Sets Office2007 Black color Theme
colorPickerUIAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Black;

{% endhighlight %}

{% highlight vb %}

colorPickerUIAdv1.UseOffice2007Style = True

'Sets Office2007 Black color Theme
Private colorPickerUIAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight  %}
{% endtabs %}

![Windows forms ColorPickerUIAdv applying Office2007Theme](ColorPickerUIAdv_Images/ColorPickerUIAdv_office2007theme.jpeg) 

The Office2007 Visual Styles can be turned off by setting the UseOffice2007Style property to false.

![Windows forms ColorPickerUIAdv sets Office2007Style property is false](ColorPickerUIAdv_Images/ColorPickerUIAdv_office2007visualstyle.jpeg)

### Custom Colors

We can also apply custom colors to the ColorPickerUIAdv control by setting Office2007Theme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}
{% highlight c# %}

this.colorPickerUIAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(this, Color.Orange);

{% endhighlight %}

{% highlight vb %}

Me.colorPickerUIAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(Me, Color.Orange)

{% endhighlight  %}
{% endtabs %}

![Windows forms ColorPickerUIAdv applying custom colors](ColorPickerUIAdv_Images/ColorPickerUIAdv_customcolors.jpeg) 


## Border Settings

### Border Styles

Border for ColorPickerUIAdv control can be Fixed Single, Fixed3D or None, which is set using BorderStyle property. By default the border style is None.

{% tabs %}
{% highlight c# %}

this.colorPickerUIAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;

{% endhighlight  %}

{% highlight vb %}

Me.colorPickerUIAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D

{% endhighlight  %}
{% endtabs %}

![Windows forms ColorPickerUIAdv sets borderstyle](ColorPickerUIAdv_Images/ColorPickerUIAdv_borderstyles.jpeg)

### BorderOffset

The below property is used to change the border height.

<table>
<tr>
<th>ColorPickerUIAdv Property</th>
<th>Description</th></tr>
<tr>
<td>BorderOffset</td>
<td>Set the border height for ColorPickerUIAdv control. The default value is 3.</td>
</tr>
</table>

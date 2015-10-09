---
layout: post
title: GradientPanel Appearance | WindowsForms | Syncfusion
description: GradientPanel Appearance
platform: WindowsForms
control: Editors Package
documentation: ug
---

# GradientPanel Appearance

The background of the GradientPanel can be customized using the below properties.

<table>
<tr>
<th>
GradientPanel Properties</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Background color used to display the text and graphics in the control.</td></tr>
<tr>
<td>
BackgroundColor</td><td>
Sets a gradient style background for the control.</td></tr>
</table>


{% highlight C# %}




this.gradientPanel1.BackColor = System.Drawing.Color.LightCoral;

this.gradientPanel1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathRectangle, System.Drawing.Color.AliceBlue, System.Drawing.Color.SteelBlue);

{% endhighlight %}


{% highlight vbnet %}




Me.gradientPanel1.BackColor = System.Drawing.Color.LightCoral

Me.gradientPanel1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathRectangle, System.Drawing.Color.AliceBlue, System.Drawing.Color.SteelBlue) 
{% endhighlight %}


 ![](GradientPanel-Images/Overview_img367.jpeg) 



## Foreground Settings

The foreground text in the control can be customized using the below properties.


<table>
<tr>
<th>
GradientPanel Properties</th><th>
Description</th></tr>
<tr>
<td>
Font</td><td>
Indicates the Font style of the text in the control.</td></tr>
<tr>
<td>
ForeColor</td><td>
Indicates the color of the text and graphics in the control.</td></tr>
</table>





{% highlight C# %}



this.gradientPanel1.Font = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Bold);

this.gradientPanel1.ForeColor = System.Drawing.Color.Blue;

{% endhighlight %}




{% highlight vbnet %}


Me.GradientPanel1.Font = New System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))

this.gradientPanel1.ForeColor = System.Drawing.Color.Blue;

{% endhighlight %}

![](GradientPanel-Images/Overview_img368.jpeg) 


## Image Settings

Background image for the GradientPanel control is set using below properties.

<table>
<tr>
<th>
GradientPanel Properties</th><th>
Description</th></tr>
<tr>
<td>
BackgroundImage</td><td>
Sets the background image for the control.</td></tr>
<tr>
<td>
BackgroundImageLayout</td><td>
Specifies the layout of the image.</td></tr>
</table>





{% highlight C# %}


this.gradientPanel1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("gradientPanel1.BackgroundImage")));

this.gradientPanel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
{% endhighlight %}



{% highlight vbnet %}



Me.gradientPanel1.BackgroundImage = CType((resources.GetObject("gradientPanel1.BackgroundImage")),System.Drawing.Image) 

Me.gradientPanel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch

{% endhighlight %}

![](GradientPanel-Images/Overview_img369.jpeg) 

{% seealso %}

[Border Settings](/windowsforms/Tools/EditorsPackage/GradientPanel/Border-Settings)

{% endseealso %}
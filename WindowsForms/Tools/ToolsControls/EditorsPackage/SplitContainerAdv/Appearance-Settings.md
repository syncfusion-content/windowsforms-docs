---
layout: post
title: Appearance Settings
description: Appearance Settings
platform: windowsforms
control: Editors Package
documentation: ug
---



# Appearance Settings

This section discusses the properties which controls the appearance of the SplitContainerAdv control.

## Background Settings

The below table describes the background settings.

Table 247: Property Table

<table>
<tr>
<td>
SplitContainerAdv Properties</td><td>
Description</td></tr>
<tr>
<td>
BackgroundImage</td><td>
Sets the background image for the control.</td></tr>
<tr>
<td>
BackgroundImageLayout</td><td>
Specifies the background image layout.</td></tr>
<tr>
<td>
BackColor</td><td>
Sets the background color for the control.</td></tr>
<tr>
<td>
BackgroundColor</td><td>
Sets the solid, gradient or pattern style background for the control. </td></tr>
</table>

> Note: The above properties can be overridden by SplitContainerAdv.Panel properties.


{% highlight C# %}




this.splitContainerAdv1.BackColor = System.Drawing.Color.LightSteelBlue;

this.splitContainerAdv1.Panel1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.BackwardDiagonal, System.Drawing.Color.AliceBlue, System.Drawing.Color.LightSteelBlue);

this.splitContainerAdv1.Panel2.BackColor = System.Drawing.Color.AliceBlue;

{% endhighlight %}

{% highlight vbnet %}



Me.splitContainerAdv1.BackColor = System.Drawing.Color.LightSteelBlue 

Me.splitContainerAdv1.Panel1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.BackwardDiagonal, System.Drawing.Color.AliceBlue, System.Drawing.Color.LightSteelBlue) 

Me.splitContainerAdv1.Panel2.BackColor = System.Drawing.Color.AliceBlue
{% endhighlight %}

## Foreground Settings

The below table describes the foreground settings.

Table 248: Property Table

<table>
<tr>
<td>
SplitContainerAdv Properties</td><td>
Description</td></tr>
<tr>
<td>
Font</td><td>
Sets the font style for the display text in the control.</td></tr>
<tr>
<td>
ForeColor</td><td>
Sets the color for the display text in the control.</td></tr>
</table>


{% highlight C# %}




this.splitContainerAdv1.Panel2.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);

this.splitContainerAdv1.Panel1.ForeColor = System.Drawing.Color.Black;

{% endhighlight %}

{% highlight vbnet %}



Me.splitContainerAdv1.Panel2.Font = New System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold) 

Me.splitContainerAdv1.Panel1.ForeColor = System.Drawing.Color.Black

{% endhighlight %}


 ![](SplitContainerAdv-Images/Overview_img401.jpeg) 



## Border Settings

BorderStyle property sets 2D or 3D border for the SplitContainerAdv control. The options are FixedSingle or Fixed3D.


{% highlight C# %}



this.splitContainerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight %}


{% highlight vbnet %}





Me.splitContainerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
{% endhighlight %}

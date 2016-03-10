---
layout: post
title: Background and Foreground Settings | WindowsForms | Syncfusion
description: background and foreground settings
platform: WindowsForms
control: EditorPackage 
documentation: ug
---
# Background and Foreground Settings

By setting the background properties, the user can create a GradientPanelExt according to his requirements. The properties and styles for the GradientPanelExt have been listed and discussed below.

## Background Properties

BackColor represents the background color used to display the text or the graphics in the control.

![](GradientPanelExt_images/Overview_img382.jpeg)






{% highlight c# %}
 gradientPanelExt1.BackColor = System.Drawing.Color.Transparent;

{% endhighlight  %}



{% highlight vbnet %}

Private gradientPanelExt1.BackColor = System.Drawing.Color.Transparent
{% endhighlight  %}


![](GradientPanelExt_images/Overview_img383.jpeg)



The colors and styles of the GradientPanelExt control can be set using the BackgroundColor properties, which have been explained below:

* Style - The styles available are solid, pattern and gradient.
* Back Color - User can select the required colors for the background using Backcolor property.
* Fore Color - Foreground color, for text or graphics can be set using ForeColor property.
* PatternStyle - Provides the pattern styles available for the style selected.
* GradientColors - This pops up the Color Collection Editor, which allows the user to add colors and get a combination of colors to display in the gradient panel with the specified style.

<table>
<tr>
<th>
GradientPanelExt Properties</th><th>
Description</th></tr>
<tr>
<td>
Style</td><td>
Specifies the brush style (Solid, Pattern, Gradient).</td></tr>
<tr>
<td>
BackColor</td><td>
Gets or sets the back color.</td></tr>
<tr>
<td>
ForeColor</td><td>
Gets or sets the fore color.</td></tr>
<tr>
<td>
PatternStyle</td><td>
Gets or sets specifies the pattern style.</td></tr>
<tr>
<td>
GradientColor</td><td>
Specifies the gradient colors, with the first color same as BackColor and last color same as ForeColor.</td></tr>
<tr>
<td>
BackgroundImage</td><td>
Specifies the background image for the control.</td></tr>
</table>


![](GradientPanelExt_images/Overview_img384.jpeg)



Alternatively, the BackgroundColor for the control can also be set using the following code snippet.




{% highlight c# %}
gradientPanelExt1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathEllipse, new     System.Drawing.Color[] {

  System.Drawing.Color.Bisque,

  System.Drawing.Color.LightSalmon,

  System.Drawing.Color.LightCoral});

{% endhighlight  %}



{% highlight vbnet %}

Private gradientPanelExt1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathEllipse, New System.Drawing.Color() {
                  System.Drawing.Color.Bisque, System.Drawing.Color.LightSalmon, System.Drawing.Color.LightCoral})


{% endhighlight  %}


![](GradientPanelExt_images/Overview_img385.jpeg)



## Image Settings

A background image can be set for the gradient panel using the BackgroundImage property. User can set the layout for the background image using the BackgroundImageLayout property. These properties can be set programmatically using the below code snippets.




{% highlight c# %}
gradientPanelExt1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("gradientPanelExt1.BackgroundImage")));                

gradientPanelExt1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;


{% endhighlight  %}


{% highlight vbnet %}

Private Me.gradientPanelExt1.BackgroundImage = (CType(resources.GetObject("gradientPanelExt1.BackgroundImage"),System.Drawing.Image))   

Private Me.gradientPanelExt1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch


{% endhighlight  %}

![](GradientPanelExt_images/Overview_img386.jpeg)



## Foreground

The control's text can be customized by altering its Font properties. The ForeColor property represents the GradientPanelExt's text color. Using the following code snippet customizes the foreground of the GradientPanelExt.



{% highlight c# %}

this.gradientPanelExt1.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, ((System.Drawing.FontStyle)                                   (((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic)

  | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));

this.gradientPanelExt1.ForeColor = System.Drawing.Color.DarkGreen;


{% endhighlight  %}
{% highlight vbnet %}




Private Me.gradientPanelExt1.Font = New System.Drawing.Font("Comic Sans MS", 9.75F, (CType                                                  (((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic) Or System.Drawing.FontStyle.Underline),                              System.Drawing.FontStyle)), System.Drawing.GraphicsUnit.Point, (CByte(0)))

Private Me.gradientPanelExt1.ForeColor = System.Drawing.Color.DarkGreen

{% endhighlight  %}

![](GradientPanelExt_images/Overview_img387.jpeg)



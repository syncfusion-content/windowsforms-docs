---
layout: post
title: Appearance-Settings
description: appearance settings
platform: WindowsForms
control: CommandBars package
documentation: ug
---

# Appearance Settings

The appearance settings that play a vital role in enhancing the appearance of the CommandBar control are listed below.

## Background Settings

The background settings of the CommandBar control are discussed below.

### BackColor

#### CommandBarController

The back color of the CommandBarController can be set using the property given below.

Table 14: CommandBarController Property Table

<table>
<tr>
<th>
CommandBarController Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
The background color used to draw the host form's dockable regions.</td></tr>
</table>

{% highlight C# %}





this.commandBarController1.BackColor = System.Drawing.Color.RosyBrown;
{% endhighlight %}


{% highlight vbnet %}





Me.CommandBarController1.BackColor = System.Drawing.Color.RosyBrown
{% endhighlight %}

#### CommandBar

The back color of the CommandBar can be set using the property given below.

Table 15: CommandBar Property Table

<table>
<tr>
<th>
CommandBar Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
The background color used to draw the component.</td></tr>
</table>

{% highlight C# %}





this.commandBar1.BackColor = System.Drawing.Color.Wheat;

{% endhighlight %}


{% highlight vbnet %}





Me.commandBar1.BackColor = System.Drawing.Color.Wheat
{% endhighlight %}


 ![](Appearance-Settings_images/Appearance-Settings_img1.jpeg) 




N> The ResetBackColor() method of the CommandBarController can be used to reset it's BackColor property to the default value. Similarly, the ResetBackColor() method of the CommandBar can be used to reset it's BackColor property to the default value.

## Foreground Settings

The foreground settings of the CommandBar control are discussed below.

### Gripper

The gripper plays a major role in the CommandBar package. It allows the user to dock / float the CommandBar at runtime.

Table 16: CommandBar Property Table

<table>
<tr>
<th>
CommandBar Property</th><th>
Description</th></tr>
<tr>
<td>
HideGripper</td><td>
Draws the CommandBar with / without the drag gripper.</td></tr>
</table>

{% highlight C# %}





this.commandBar1.HideGripper=true;
{% endhighlight %}

{% highlight vbnet %}





Me.commandBar1.HideGripper=True
{% endhighlight %}


![](Appearance-Settings_images/Appearance-Settings_img3.jpeg) 



### Font

The font of the text displayed in the CommandBar can be customized using the property given below.

Table 17: CommandBar Property Table

<table>
<tr>
<th>
CommandBar Property</th><th>
Description</th></tr>
<tr>
<td>
Font</td><td>
The font used to display text in the control.</td></tr>
</table>

{% highlight C# %}





this.commandBar3.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
{% endhighlight %}


{% highlight vbnet %}





Me.commandBar3.Font = New System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CByte((0)))
{% endhighlight %}


![](Appearance-Settings_images/Appearance-Settings_img4.jpeg)




N> The ResetFont() method can be used to reset the Font property to it's default value.

## Length and Height Settings

The properties that define the dimensions for the CommandBar are given below. During design time, the control's size can be changed by editing these property values.

Table 18: CommandBar Property Table

<table>
<tr>
<th>
CommandBar Property</th><th>
Description</th></tr>
<tr>
<td>
MaxLength</td><td>
Gets / sets the maximum linear dimension of the CommandBar.</td></tr>
<tr>
<td>
MinLength</td><td>
Gets / sets the minimum linear dimension of the CommandBar.</td></tr>
<tr>
<td>
OccupyFullRow</td><td>
Indicates whether the CommandBar should occupy the entire row when docked.</td></tr>
<tr>
<td>
MinHeight</td><td>
Gets / sets the ideal lateral dimension of the CommandBar.</td></tr>
<tr>
<td>
IntegralHeight</td><td>
Gets / sets the incremental step by which the CommandBar's lateral dimension increases when wrapped.</td></tr>
</table>

{% highlight C# %}





this.commandBar1.MaxLength = 201;

this.commandBar1.MinLength = 51;

this.commandBar1.OccupyFullRow = true;

this.commandBar1.MinHeight = 27;

this.commandBar1.IntegralHeight = 2;
{% endhighlight %}


{% highlight vbnet %}






Me.commandBar1.MaxLength = 201

Me.commandBar1.MinLength = 51

Me.commandBar1.OccupyFullRow = True

Me.commandBar1.MinHeight = 27

Me.commandBar1.IntegralHeight = 2

{% endhighlight %}

 ![](Appearance-Settings_images/Appearance-Settings_img6.jpeg) 



The method associated with the above properties is given below.

Table 19: Method Table

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
CalcCommandBarMaxLength</td><td>
Calculates the CommandBar's maximum length for the specified client width.</td></tr>
</table>

{% seealso %}

Interactive Features, Themes And Visual Styles

{% endseealso %}

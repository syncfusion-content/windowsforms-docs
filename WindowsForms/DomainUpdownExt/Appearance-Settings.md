---
layout: post
title: Appearance Settings
description: appearance settings
platform: windowsforms
control: DomainUpdownExt 
documentation: ug
---
# Appearance Settings

This section discusses the border styles and back color that can be applied for DomainUpDownExt control.

The below table lists the appearance properties of DomainUpDownExt control.

Table258: Property Table

<table>
<tr>
<th>
DomainUpDownExt Properties</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Specifies the border style for the control. The options includesFixedSingle,Fixed3D, andNone.</td></tr>
<tr>
<td>
Border3DStyle</td><td>
Specifies the 3D BorderStyle for the control when BorderStyle = Fixed3D.The options are,RaisedInner,RaisedOuter,Raised,Sunken (default),SunkenInner,SunkenOuter,Flat,Bump andAdjust.</td></tr>
<tr>
<td>
BorderSides</td><td>
Specifies the sides of the control which can have border. The options are,Left,Top,Right,Bottom,Middle andAll (default).</td></tr>
<tr>
<td>
BorderColor</td><td>
Specifies the color for 2D border. The default color is 'black'.</td></tr>
<tr>
<td>
ThemedBorder</td><td>
Specifies whether to enable themes for the border around the control. ThemesEnabled must be set to 'True'.</td></tr>
<tr>
<td>
BackColor</td><td>
Specifies the back color for the control.</td></tr>
</table>





{% highlight c# %}
this.domainUpDownExt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

this.domainUpDownExt1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump;

this.domainUpDownExt1.BorderSides = System.Windows.Forms.DomainUpdownExt_images.Right;

this.domainUpDownExt1.BorderColor = System.Drawing.Color.DodgerBlue; 

this.domainUpDownExt1.BackColor = System.Drawing.Color.AntiqueWhite;

{% endhighlight  %}


{% highlight vbnet %}


Me.domainUpDownExt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

Me.domainUpDownExt1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump

Me.domainUpDownExt1.BorderSides = System.Windows.Forms.DomainUpdownExt_images.Right

Me.domainUpDownExt1.BorderColor = System.Drawing.Color.DodgerBlue

Me.domainUpDownExt1.BackColor = System.Drawing.Color.AntiqueWhite

{% endhighlight  %}

![](DomainUpdownExt_images/Overview_img431.png) 



![](DomainUpdownExt_images/Overview_img432.png) 



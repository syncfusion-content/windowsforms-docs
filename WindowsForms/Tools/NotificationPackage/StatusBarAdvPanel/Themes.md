---
layout: post
title: Themes
description: themes
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Themes

The StatusBarAdvPanel control can be provided with a themed look and feel using the properties given below.

_Table_ _677_: _Property Table_

<table>
<tr>
<td>
StatusBarAdvPanel Property</td><td>
Description</td></tr>
<tr>
<td>
ThemesEnabled</td><td>
Indicates if the background color will be set to 'Transparent'. Indicated Settings: BorderSides = Right, BorderStyle = Fixed3D, Border3DStyle = Etched.</td></tr>
<tr>
<td>
IgnoreThemeBackground</td><td>
Indicates whether the control will ignore the theme's background color and draw the backcolor instead.</td></tr>
</table>


{% highlight c# %}



this.statusBarAdvPanel1.IgnoreThemeBackground = true;

this.statusBarAdvPanel1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdvPanel1.IgnoreThemeBackground = True

Me.statusBarAdvPanel1.ThemesEnabled = True

{% endhighlight %}


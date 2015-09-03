---
layout: post
title: Themes
description: themes
platform: windowsforms
control: StatusBarAdvPanel
documentation: ug
---

# Themes

The StatusBarAdvPanel control can be provided with a themed look and feel using the properties given below.

Table 677: Property Table

<table>
<tr>
<th>
StatusBarAdvPanel Property</th><th>
Description</th></tr>
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


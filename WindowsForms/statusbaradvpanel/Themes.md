---
layout: post
title: Themes | WindowsForms | Syncfusion
description: themes
platform: WindowsForms
control: StatusBarAdvPanel
documentation: ug
---

# Themes

The StatusBarAdvPanel control can be provided with a themed look and feel using the properties given below.

Property Table

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
Indicates whether the control will ignore the theme's background color and draw the back color instead.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.statusBarAdvPanel1.IgnoreThemeBackground = true;
this.statusBarAdvPanel1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vb %}

Me.statusBarAdvPanel1.IgnoreThemeBackground = True
Me.statusBarAdvPanel1.ThemesEnabled = True

{% endhighlight %}
{% endtabs %}

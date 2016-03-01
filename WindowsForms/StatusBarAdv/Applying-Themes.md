---
layout: post
title: Applying-Themes | Windows Forms | Syncfusion
description: applying themes
platform: windowsforms
control: StatusBarAdv
documentation: ug
---

# Applying Themes

The StatusBarAdv control can be provided with a themed look and feel using the properties given below.

Table 663: Property Table

<table>
<tr>
<th>
StatusBarAdv Property</th><th>
Description</th></tr>
<tr>
<td>
ThemesEnabled</td><td>
Indicates if the StatusBar will draw a themed background. Indicated Settings: BorderStyle = None.</td></tr>
<tr>
<td>
IgnoreThemeBackground</td><td>
Indicates whether the control will ignore the theme's background color and draw the backcolor instead.</td></tr>
</table>


{% highlight c# %}



this.statusBarAdv1.IgnoreThemeBackground = true;

this.statusBarAdv1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdv1.IgnoreThemeBackground = True

Me.statusBarAdv1.ThemesEnabled = True

{% endhighlight %}

![](Overview_images/Overview_img76.jpeg) 




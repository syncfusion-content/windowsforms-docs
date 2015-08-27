---
layout: post
title: Applying-Themes
description: applying themes
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Applying Themes

The StatusBarAdv control can be provided with a themed look and feel using the properties given below.

_Table_ _663_: _Property Table_

<table>
<tr>
<td>
StatusBarAdv Property</td><td>
Description</td></tr>
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




---
layout: post
title: Applying Themes in Windows Forms Status Bar | Syncfusion®
description: Applying themes in Windows Forms Status Bar enables a consistent visual appearance across applications using predefined styles.
platform: WindowsForms
control: Status Bar
documentation: ug
---

# Applying Themes in Windows Forms Status Bar

The Status Bar control can be provided with a themed look and feel using the properties given below.

Property Table

<table>
<tr>
<th>
Status Bar Property</th><th>
Description</th></tr>
<tr>
<td>
ThemesEnabled</td><td>
Indicates if the StatusBar will draw a themed background. Indicated Settings: BorderStyle = None.</td></tr>
<tr>
<td>
IgnoreThemeBackground</td><td>
Indicates whether the control will ignore the theme's background color and draw the back color instead.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.statusBarAdv1.IgnoreThemeBackground = true;
this.statusBarAdv1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vb %}

Me.statusBarAdv1.IgnoreThemeBackground = True
Me.statusBarAdv1.ThemesEnabled = True

{% endhighlight %}
{% endtabs %}

![Overview_img76](Overview_images/Overview_img76.jpeg) 

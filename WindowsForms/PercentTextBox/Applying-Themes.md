---
layout: post
title: Applying Themes
description: Applying Themes
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Applying Themes

Themes can be applied to the PercentTextBox control using the property given below.



<table>
<tr>
<th>
PercentTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether or not to use XP themes when BorderStyle  property is set to 'Fixed3D'.</td></tr>
</table>

N> Refer [Border Settings](/windowsforms/percenttextbox/bordersettings) topic to know about the BorderStyle property.




{% highlight C# %}


this.percentTextBox1.ThemesEnabled = true;
{% endhighlight %}



{% highlight vbnet %}



Me.percentTextBox1.ThemesEnabled = true

{% endhighlight %}

![](PercentTextBox-Images/Overview_img487.png) 


A Sample which demonstrates the ThemesEnabled property of the PercentTextBox control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo
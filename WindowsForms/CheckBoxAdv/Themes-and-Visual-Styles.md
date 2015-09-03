---
layout: post
title: Themes-and-Visual-Styles
description: themes and visual styles
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Themes and Visual Styles

This section discusses the themes and visual style settings that are supported by the CheckBoxAdv control.

### Themes

The CheckBoxAdv can be provided with a themed appearance using the below given property.

Table 404: Property Table

<table>
<tr>
<th>
CheckBoxAdv Property</th><th>
Description</th></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether themes are enabled for CheckBoxAdv.</td></tr>
</table>

{% highlight c# %}



this.checkBoxAdv1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vbnet %}



Me.checkBoxAdv1.ThemesEnabled = True

{% endhighlight %}

![](Overview_images/Overview_img623.jpeg)


### Visual Styles

The appearance of the CheckBoxAdv control can be customized using the various options provided by the following properties.

Table 405: Property Table

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
Style</td><td>
Gets / sets an advanced appearance for the CheckBoxAdv.The options included are as follows.{{ '_Default and_' | markdownify }}{{ '_Office2007._' | markdownify }}</td></tr>
<tr>
<td>
Office2007ColorScheme</td><td>
Gets / sets Office 2007 color scheme.The options included are as follows.{{ '_Managed,_' | markdownify }}{{ '_Blue,_' | markdownify }}{{ '_Silver and_' | markdownify }}{{ '_Black._' | markdownify }}The Style property should be set to "Office2007".</td></tr>
</table>


{% highlight c# %}



this.checkBoxAdv1.Style = Syncfusion.Windows.Forms.Tools.CheckBoxAdvStyle.Office2007;

this.checkBoxAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue;

{% endhighlight %}

{% highlight vbnet %}



Me.checkBoxAdv1.Style = Syncfusion.Windows.Forms.Tools.CheckBoxAdvStyle.Office2007

Me.checkBoxAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue

{% endhighlight %}

![](Overview_images/Overview_img624.jpeg) 


![](Overview_images/Overview_img625.jpeg)


When the Office2007ColorScheme property is set to 'Managed', the CheckBox in the CheckBoxAdv can be displayed using custom colors supported by the control.

This can be done programmatically as follows.

{% highlight c# %}



this.checkBoxAdv1.Style = Syncfusion.Windows.Forms.Tools.CheckBoxAdvStyle.Office2007;

this.checkBoxAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Pink);

{% endhighlight %}

{% highlight vbnet %}



Me.checkBoxAdv1.Style = Syncfusion.Windows.Forms.Tools.CheckBoxAdvStyle.Office2007

Me.checkBoxAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed

Office2007Colors.ApplyManagedColors(Me, Color.Pink)

{% endhighlight %}

![](Overview_images/Overview_img626.jpeg)


A sample which demonstrates the Themes and Visual Styles of CheckBoxAdv is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_
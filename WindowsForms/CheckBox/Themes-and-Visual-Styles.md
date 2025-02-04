---
layout: post
title: Themes and Visual Styles in Windows Forms CheckBox | Syncfusion®
description: Learn about Themes and Visual Styles support in Syncfusion® Windows Forms CheckBox (CheckBoxAdv) control and more details.
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Themes and Visual Styles in Windows Forms CheckBox (CheckBoxAdv)

This section discusses the themes and visual style settings supported by the [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control.

## Themes

Themes can be applied to [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control by enabling the [ThemesEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ThemedControl.html#Syncfusion_Windows_Forms_ThemedControl_ThemesEnabled) property.

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

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.ThemesEnabled = True

{% endhighlight %}
{% endtabs %}

![Windows forms CheckBoxAdv Themes appearance](Overview_images/CheckBoxAdv_themes.jpeg)

## Visual Styles

The appearance of the [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control can be customized using the [Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_Style), [Office2007ColorScheme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_Office2007ColorScheme) and [Office2010ColorScheme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_Office2010ColorScheme) properties.

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
Style</td><td>
Gets or sets an advanced appearance for the CheckBoxAdv.The options included are as follows, Default, Office2007, Metro, Office2016Colorful, Office2016White, Office2016Black, Office2016DarkGray

</td></tr>
<tr>
<td>
Office2007ColorScheme</td><td>
Gets or sets Office 2007 color scheme.The options included are as follows, Managed, Blue, Silver and Black. The Style property should be set to "Office2007".</td></tr>
<tr>
<td>
Office2010ColorScheme</td><td>
Gets or sets Office 2010 color scheme.The options included are as follows, Managed, Blue, Silver and Black. The Style property should be set to "Office2010".</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.Style = Syncfusion.Windows.Forms.Tools.CheckBoxAdvStyle.Office2016Colorful;

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.Style = Syncfusion.Windows.Forms.Tools.CheckBoxAdvStyle.Office2016Colorful

{% endhighlight %}
{% endtabs %}

![Windows forms CheckBoxAdv visualstyles](Overview_images/CheckBoxAdv_visualstyle.jpeg) 

When the Office2007ColorScheme property is set to 'Managed', the CheckBox in the CheckBoxAdv can be displayed using custom colors supported by the control.

{% tabs %}
{% highlight c# %}

checkBoxAdv1.Style = Syncfusion.Windows.Forms.Tools.CheckBoxAdvStyle.Office2007;
checkBoxAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(this, Color.Red);

{% endhighlight %}

{% highlight vb %}

checkBoxAdv1.Style = Syncfusion.Windows.Forms.Tools.CheckBoxAdvStyle.Office2007
checkBoxAdv1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed
Office2007Colors.ApplyManagedColors(Me, Color.Red)
{% endhighlight %}
{% endtabs %}

![Windows forms CheckBoxAdv Office2007ColorScheme is set to managed](Themes-And-VisualStyle-images/Theme-And-VisualStyle-img1.png)

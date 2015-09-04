---
layout: post
title: Themes-And-Styles
description: themes and styles
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Themes And Styles

The below given properties enhances the look and feel of the ComboDropDown.

Table 213: Property Table

<table>
<tr>
<th>
ComboDropDown Properties</th><th>
Description</th></tr>
<tr>
<td>
IgnoreThemeBackground</td><td>
Specifies whether the control will ignore the theme's background color and draw the backcolor instead.</td></tr>
<tr>
<td>
Style</td><td>
Specifies advanced appearance and behavior of the ComboDropDown. The default value is 'Default'. The options are,<ul><li>{{ 'Default,' | markdownify }}</li><li>{{ 'OfficeXP,' | markdownify }}</li><li>{{ 'Office2003,' | markdownify }}</li><li>{{ 'VS2005 and' | markdownify }}</li><li>{{ 'Office2007.' | markdownify }}</li></ul></td></tr>
</table>


{% highlight c# %}



this.comboDropDown1.IgnoreThemeBackground = true;



//To set Default Visual Style

this.comboDropDown1.Style = Syncfusion.Windows.Forms.VisualStyle.Default;

//To set Office2003 Visual Style

this.comboDropDown1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2003;

//To set OfficeXP Visual Style

this.comboDropDown1.Style = Syncfusion.Windows.Forms.VisualStyle.OfficeXP;

//To set VS2005 Visual Style

this.comboDropDown1.Style = Syncfusion.Windows.Forms.VisualStyle.VS2005;

//To set Office2007 Visual Style

this.comboDropDown1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;          

{% endhighlight %}

{% highlight vbnet %}



Me.comboDropDown1.IgnoreThemeBackground = True



'To set Default Visual Style

Me.comboDropDown1.Style = Syncfusion.Windows.Forms.VisualStyle.Default

'To set Office2003 Visual Style

Me.comboDropDown1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2003

'To set OfficeXP Visual Style

Me.comboDropDown1.Style = Syncfusion.Windows.Forms.VisualStyle.OfficeXP

'To set VS2005 Visual Style

Me.comboDropDown1.Style = Syncfusion.Windows.Forms.VisualStyle.VS2005

'To set Office2007 Visual Style

Me.comboDropDown1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007

{% endhighlight %}

![](Overview_images/Overview_img288.jpeg) 



## Office Color Schemes

The ComboDropDown control supports blue, silver and black office colors scheme. It is set using Office2007ColorTheme property. Style property should be set to Office2007.

{% highlight c# %}



//To set Blue Color scheme

this.comboDropDown1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Blue;

//To set Silver Color scheme

this.comboDropDown1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

//To set Black Color scheme

this.comboDropDown1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Black;                

{% endhighlight %}

{% highlight vbnet %}



'To set Blue Color scheme

Me.comboDropDown1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Blue

'To set Silver Color scheme

Me.comboDropDown1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Silver

'To set Black Color scheme

Me.comboDropDown1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight %}

![](Overview_images/Overview_img289.jpeg) 



## Custom Colors

We can also apply custom colors to the ComboDropDown control by setting Office2007ColorTheme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.

{% highlight c# %}



this.comboDropDown1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Orchid);

{% endhighlight %}

{% highlight vbnet %}



Me.comboDropDown1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Orchid)

{% endhighlight %}

![](Overview_images/Overview_img290.jpeg) 
---
layout: post
title: Overview
description: overview
platform: windowsforms
control: Editors Package
documentation: ug
---

# Visual Styles

The Office2007 visual style for the FontComboBox control can be enabled through below properties.

_Table_ _385__: Property Table_

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
VisualStyle</td><td>
Sets the visual style for the control. The options are,Default (default value) andOffice2007.</td></tr>
<tr>
<td>
Office2007ColorScheme</td><td>
Specifies the office color schemes. The color schemes are,Blue,Silver and Black.</td></tr>
</table>

{%highlight c#%}



this.fontComboBox2.VisualStyle = Syncfusion.Windows.Forms.Tools.ThemedComboBoxStyles.Office2007;

this.fontComboBox2.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

{%endhighlight%}



{%highlight vbnet%}



Me.fontComboBox2.VisualStyle = Syncfusion.Windows.Forms.Tools.ThemedComboBoxStyles.Office2007

Me.fontComboBox2.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Silver

{%endhighlight%}

![](Overview_images/Overview_img586.jpeg) 



### Custom Colors

We can also apply custom colors to the FontComboBox control by setting Office2007ColorTheme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.

{%highlight c#%}



this.fontComboBox2.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Orchid);

{%endhighlight%}

{%highlight vbnet%}



Me.fontComboBox2.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Orchid)

{%endhighlight%}



![](Overview_images/Overview_img587.jpeg) 


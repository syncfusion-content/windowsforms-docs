---
layout: post
title: Interactive-Features | Windows Forms | Syncfusion
description: interactive features
platform: windowsforms
control: CommandBars
documentation: ug
---

# Interactive Features

This section discusses the interactive features available in the CommandBar control.

## Chevron

The term "chevron" is used for a menu that contains the toolbar icons that do not fit in the space available on the toolbar.


<table>
<tr>
<th>
CommandBar Property</th><th>
Description</th></tr>
<tr>
<td>
ChevronColor</td><td>
Gets / sets the color of the chevron.</td></tr>
<tr>
<td>
HideChevron</td><td>
Indicates whether the CommandBar should be drawn without a chevron.</td></tr>
<tr>
<td>
IsChevronVisible</td><td>
Indicates whether the chevron is currently visible.</td></tr>
</table>



{% highlight C# %}




this.commandBar1.ChevronColor = System.Drawing.Color.Black;

this.commandBar1.HideChevron = false;

this.CommandBar1.IsChevronVisible = true
{% endhighlight %}




{% highlight vbnet %}



Me.commandBar1.ChevronColor = System.Drawing.Color.Black

Me.commandBar1.HideChevron = False

Me.CommandBar1.IsChevronVisible = True
{% endhighlight %}


The following screen shot displays the chevron in the CommandBar.

 ![](Interactive-Features_images/Interactive-Features_img1.jpeg) 





N> The chevron will be visible only when the toolbar icons do not fit in the space available in the toolbar. Normally it will not be displayed.

A sample which demonstrates the Chevron settings of the CommandBar control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo


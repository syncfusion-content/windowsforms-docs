---
layout: post
title: Border Settings in Windows Forms Navigation Pane control | Syncfusion
description: Learn about Border Settings support in Syncfusion Windows Forms Navigation Pane (GroupBar) control and more details.
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Border Settings in Windows Forms Navigation Pane (GroupBar)

## GroupBar settings

The border style of the GroupBar can be set using the [BorderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_BorderStyle) property.

{% tabs %}

{% highlight C# %} 

this.groupBar1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;

 {% endhighlight %}

 
 
{% highlight VB %}

Me.groupBar1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D 

{% endhighlight %}

{% endtabs %}

 ![GroupBar border style](Overview_images/Overview_img32.jpeg) 


## GroupBar item client area border settings

The border of the GroupBar Item client area can be set and customized using the following properties.

* [DrawClientBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_DrawClientBorder)
* [ClientBorderColors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBarItem.html#Syncfusion_Windows_Forms_Tools_GroupBarItem_ClientBorderColors)

{% tabs %}

{% highlight C# %}

this.groupBar1.DrawClientBorder = true;

this.groupBarItem2.ClientBorderColors = new Syncfusion.Windows.Forms.Tools.BorderColors(System.Drawing.Color.Red, System.Drawing.Color.Aqua, System.Drawing.Color.Lime, System.Drawing.Color.Magenta);

{% endhighlight %}



{% highlight VB %}

Me.groupBar1.DrawClientBorder = True

Me.groupBarItem2.ClientBorderColors = New Syncfusion.Windows.Forms.Tools.BorderColors(System.Drawing.Color.Red, System.Drawing.Color.Aqua, System.Drawing.Color.Lime, System.Drawing.Color.Magenta)

{% endhighlight %}

{% endtabs %}

 ![GroupBar item client area border](Overview_images/Overview_img33.jpeg)


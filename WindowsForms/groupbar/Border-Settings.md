---
layout: post
title: Border Settings  | WindowsForms | Syncfusion
description: Border Settings
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Border settings

## GroupBar settings

The border style of the GroupBar can be set using the [BorderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBar~BorderStyle.html) property.

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

* [DrawClientBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBar~DrawClientBorder.html)
* [ClientBorderColors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBarItem~ClientBorderColors.html)

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


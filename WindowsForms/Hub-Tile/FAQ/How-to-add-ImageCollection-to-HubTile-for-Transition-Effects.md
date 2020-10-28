---
layout: post
title: How to add ImageCollection to HubTile | WindowsForms | Syncfusion
description: How to add ImageCollection to HubTile for Transition Effects
platform: WindowsForms
control: HubTile
documentation: ug
---

# How to add ImageCollection to HubTile for transition effects?

You can achieve this requirement using HubTile [ImageList](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.HubTile.html#Syncfusion_Windows_Forms_Tools_HubTile_ImageList) and [ImageListAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.HubTile.html#Syncfusion_Windows_Forms_Tools_HubTile_ImageListAdv) properties.

This is configured either through code or form designer.

#### Through code

{% tabs %}
{% highlight C# %}  
this.HubTile1.ImageListAdv = this.ImageListAdv;
this.HubTile1.ImageList = this.ImageList;
{% endhighlight %}
{% highlight VB %} 
Me.HubTile1.ImageListAdv = Me.ImageListAdv
Me.HubTile1.ImageList = Me.ImageList
{% endhighlight %}
{% endtabs %}

#### Through designer

The following screenshot displays the [ImageListAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.HubTile.html#Syncfusion_Windows_Forms_Tools_HubTile_ImageListAdv) property.

![Add ImageListAdv](Frequently-asked-questions-images/FAQ_img1.png)

The following screenshot displays the ImageList property.

![Add ImageList](Frequently-asked-questions-images/FAQ_img2.png)

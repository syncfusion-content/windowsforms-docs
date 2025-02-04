---
layout: post
title: TabStrip without tab page | WindowsForms | Syncfusion®
description: how to display tabstrip when there are no tabpages
platform: windowsforms
control: TabsPackage
documentation: ug
---

# How to Display TabStrip when there are no TabPages?

The TabStrip can be made visible even if there are no TabPages added. The TabControlAdv has a [ReserveTabSpace](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ReserveTabSpace) property which makes the tab strip visible when set to `true`. [ReservedSpace](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ReservedSpace) property is used to specify the height of the tab strip when the above bool property is enabled.

{% tabs %}

{% highlight C# %}


//Setting the visibility of TabStrip.

this.tabControlAdv1.ReserveTabSpace = true;



//Specifying the height of the TabStrip.

this.tabControlAdv1.ReservedSpace = 25;

{% endhighlight %}

{% highlight VB %}



'Setting the visibility of TabStrip.

Me.tabControlAdv1.ReserveTabSpace =  True



'Specifying the height of the TabStrip.

Me.tabControlAdv1.ReservedSpace = 25

{% endhighlight %}

{% endtabs %}

![Reserved tab space](How-to-Display-TabStrip-when-there-are-no-TabPages_images/How-to-Display-TabStrip-when-there-are-no-TabPages_img1.jpeg)




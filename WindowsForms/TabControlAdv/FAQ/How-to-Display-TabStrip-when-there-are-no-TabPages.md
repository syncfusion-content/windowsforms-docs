---
layout: post
title: How-to-Display-TabStrip-when-there-are-no-TabPages | Windows Forms | Syncfusion
description: how to display tabstrip when there are no tabpages
platform: windowsforms
control: TabsPackage
documentation: ug
---

# How to Display TabStrip when there are no TabPages?

The TabStrip can be made visible even if there are no TabPages added. The TabControlAdv has a `ReserveTabSpace` property which makes the tabstrip visible when set to True.`ReservedSpace` property is used to specify the height of the tabstrip when the above bool property is enabled.

{% tabs %}

{% highlight c# %}


//Setting the visibility of tabstrip.

this.tabControlAdv1.ReserveTabSpace = true;



//Specifying the height of the tabstrip.

this.tabControlAdv1.ReservedSpace = 25;

{% endhighlight %}

{% highlight vbnet %}



'Setting the visibility of tabstrip.

Me.tabControlAdv1.ReserveTabSpace =  True



'Specifying the height of the tabstrip.

Me.tabControlAdv1.ReservedSpace = 25

{% endhighlight %}

{% endtabs %}

![](How-to-Display-TabStrip-when-there-are-no-TabPages_images/How-to-Display-TabStrip-when-there-are-no-TabPages_img1.jpeg)




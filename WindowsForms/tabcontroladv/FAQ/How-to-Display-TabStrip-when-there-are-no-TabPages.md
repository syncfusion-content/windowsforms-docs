---
layout: post
title: How-to-Display-TabStrip-when-there-are-no-TabPages | WindowsForms | Syncfusion
description: how to display tabstrip when there are no tabpages
platform: WindowsForms
control: TabsPackage
documentation: ug
---

# How to Display TabStrip when there are no TabPages?

The TabStrip can be made visible even if there are no TabPages added. The TabControlAdv has a `ReserveTabSpace` property which makes the tab strip visible when set to `true`. `ReservedSpace` property is used to specify the height of the tab strip when the above bool property is enabled.

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

![](How-to-Display-TabStrip-when-there-are-no-TabPages_images/How-to-Display-TabStrip-when-there-are-no-TabPages_img1.jpeg)




---
layout: post
title: How-to-get-or-set-the-description-on-RibbonControl
description: how to get or set the description on ribboncontroladv?
platform: windowsforms
control: Tools
documentation: ug
---

# How to get or set the description on RibbonControlAdv?

The GetDescription or SetDescription methods of the RibbonControlAdv can be used to gets / sets the text that is displayed with the component in the quick panel customizing dialog. 

{% highlight c# %}



//Gets the description

this.ribbonControlAdv1.GetDescription(this.toolStripTabItem1);



//Sets the description

this.ribbonControlAdv1.SetDescription(this.toolStripTabItem1, "This is a drop down button");

{% endhighlight %}

{% highlight vbnet %}



'Gets the description

this.ribbonControlAdv1.GetDescription(this.toolStripTabItem1);



'Sets the description

Me.ribbonControlAdv1.SetDescription(Me.toolStripTabItem1, "This is a drop down button")

{% endhighlight %}

![](How-to-get-or-set-the-description-on-RibbonControl_images/How-to-get-or-set-the-description-on-RibbonControl_img1.jpeg)




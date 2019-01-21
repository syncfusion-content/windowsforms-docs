---
layout: post
title: RTL | Windows Forms | Syncfusion
description: Display the content from right to left
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# RTL

RTL is used to display the content from right to left by setting the **RightToLeft** property to **Yes**.

## Through Designer

1. Once ContextMenuStripEx control is added, right-clicking on the control in the designer and select **Properties** option. Now, in the **Properties** panel, under **Appearance > RightToLeft** we need to set **Yes**.

![right-to-left](RTL_Images/Properties.png)

![right-to-left](RTL_Images/Properties1.png)

## Through Code

The following code sample explains how to display the control from right-to-left.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.RightToLeft = System.Windows.Forms.RightToLeft.Yes

{% endhighlight %}
{% endtabs %}

![right-to-left](RTL_Images/RTL.png)
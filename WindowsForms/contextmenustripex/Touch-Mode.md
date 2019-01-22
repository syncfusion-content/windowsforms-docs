---
layout: post
title: Touch Mode | Windows Forms | Syncfusion
description: Touch mode is used to access the control easily on touch devices.
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Touch Mode

Touch mode is used to access the control easily in touch devices. This option can be enabled using the **EnableTouchMode** property in ContextMenuStripEx control.

## Through Designer

Once ContextMenuStripEx control is added, we can set touch mode by right-clicking on the control in the designer and select **Properties** option. Now, in the **Properties** panel, under **Misc > EnableTouchMode** we need to set **true**.

![Touch Mode](TouchMode_Images/Properties.png)

![Touch Mode](TouchMode_Images/Properties1.png)

## Through Code

The below code snippet shows how touch mode is enabled in ContextMenuStripEx control.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx1.EnableTouchMode = true;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx1.EnableTouchMode = True

{% endhighlight %}
{% endtabs %}
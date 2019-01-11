---
layout: post
title: Themes | Windows Forms | Syncfusion
description: Supports set of visual styles to customize the look and feel of ContextMenuStripEx control
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Themes

Theming is the process of applying particular appearance settings to visual elements of a control. This control provides the following theming options:

* Default
* Metro
* Office2016Colorful
* Office2016White
* Office2016DarkGray
* Office2016Black

The **Style** property is used to set the visual style of ContextMenuStripEx control.

## Office2016Black

### Through Designer

Once ContextMenuStripEx control is added, we can set visual style by right-clicking on the control in the designer and select **Properties** option. Now, in the **Properties** panel, under **Misc > Style** we need to choose visual style.

![](Theme_Images/Properties.png)

![](Theme_Images/Properties1.png)

### Through Code

The below code snippet will sets the visual style as "Office2016Black".

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx1.Style = Syncfusion.Windows.Forms.Tools.ContextMenuStripEx.ContextMenuStyle.Office2016Black;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx1.Style = Syncfusion.Windows.Forms.Tools.ContextMenuStripEx.ContextMenuStyle.Office2016Black

{% endhighlight %}
{% endtabs %}

![](Theme_Images/Office2016Black.png)

## Default

![](Theme_Images/Default.png)

## Metro

![](Theme_Images/Metro.png)

## Office2016Colorful

![](Theme_Images/Office2016Colorful.png)

## Office2016White

![](Theme_Images/Office2016White.png)

## Office2016DarkGray

![](Theme_Images/Office2016DarkGray.png)


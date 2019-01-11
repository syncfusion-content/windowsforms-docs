---
layout: post
title: Auto Close | Windows Forms | Syncfusion
description: Specifies whether the context menu should close for any user actions at runtime.
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Auto Close

When **AutoClose** property of the ContextMenuStrip control is set to **true**, context menu will get closed when user clicks on any item. If this is not enabled, the menu items will not be closed even after user action. By default it is set to **true**.
 
## Through Designer

Once ContextMenuStripEx control is added, right-clicking on the control in the designer and select **Properties** option. Now, in the **Properties** panel, under **Behavior > AutoClose** we need to set either true or false.

![](AutoClose_Images/AutoClose.png)

![](AutoClose_Images/AutoClose1.png)

## Through Code

Below code snippet will explain how to set **AutoClose** property.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx1.AutoClose = true;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx1.AutoClose = True

{% endhighlight %}
{% endtabs %}

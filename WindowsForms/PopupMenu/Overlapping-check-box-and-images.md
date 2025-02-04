---
layout: post
title: Overlapping check box and images in WinForms PopupMenu | Syncfusion®
description: Learn about Overlapping check box and images support in Syncfusion® Windows Forms PopupMenu control and more details.
platform: windowsforms
control: PopupMenu
documentation: ug
---

# Overlapping check box and images in Windows Forms PopupMenu

By default, both checked state and images associated with a bar item are overlapped. If the property [`OverlapCheckBoxImageBounds`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem.html#Syncfusion_Windows_Forms_Tools_XPMenus_ParentBarItem_OverlapCheckBoxImageBounds) of the parent bar item is set to `true`, a border for the image will be drawn to indicate the checked state. Or, if the property is set to `false` the check state of the bar item will be drawn separately. By default the [`OverlapCheckBoxImageBounds`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem.html#Syncfusion_Windows_Forms_Tools_XPMenus_ParentBarItem_OverlapCheckBoxImageBounds) property is set as `true`.

![Overlapping](Imageoverlapping_Images/true.png)

The below code snippet will explain the overlapping of check box and images in the PopupMenu control.

{% tabs %}
{% highlight c# %}

this.parentBarItem1.OverlapCheckBoxImageBounds = false;

{% endhighlight %}

{% highlight vb %}

Me.parentBarItem1.OverlapCheckBoxImageBounds = False

{% endhighlight %}
{% endtabs %}


![Overlapping](Imageoverlapping_Images/false.png)



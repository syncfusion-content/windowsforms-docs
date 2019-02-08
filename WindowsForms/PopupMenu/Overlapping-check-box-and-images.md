---
layout: post
title:  Overlapping check box and images | Windows Forms | Syncfusion
description: Overlapping of check box and images
platform: WindowsForms
control: PopupMenu
documentation: ug
---

# Overlapping check box and images

By default, both checked state and images associated with a bar item are overlapped. If the property [`OverlapCheckBoxImageBounds`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem~OverlapCheckBoxImageBounds.html) of the parent bar item is set to `true`, a border for the image will be drawn to indicate the checked state. Or, if the property is set to `false` the check state of the bar item will be drawn separately. By default the [`OverlapCheckBoxImageBounds`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem~OverlapCheckBoxImageBounds.html) property is set as `true`.

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



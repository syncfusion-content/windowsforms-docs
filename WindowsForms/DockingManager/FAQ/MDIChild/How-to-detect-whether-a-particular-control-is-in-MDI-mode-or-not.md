---
layout: post
title: How to detect whether a particular control is in MDI mode or not
description: How to detect whether a particular control is in MDI mode or not
platform: WindowsForms
control: Control Name undefined
documentation: ug
---


# How to detect whether a particular control is in MDI mode or not?

To know whether the control is in MDI mode or not, the below method can be called.

IsMDIMode method let you detect whether the specified control is in MDI child mode or not. The return value will be true if the control is in MDI mode, else value will be false.




{% highlight C# %}



this.dockingManager1.IsMDIMode(this.listBox2);
{% endhighlight %}



{% highlight vbnet %}


Me.dockingManager1.IsMDIMode(Me.listBox2)
{% endhighlight %}

{% seealso %}

[MDI Child Transition](/windowsforms/DockingPackage/Advanced-Features.html#mdi-child-transition)

{% endseealso %}
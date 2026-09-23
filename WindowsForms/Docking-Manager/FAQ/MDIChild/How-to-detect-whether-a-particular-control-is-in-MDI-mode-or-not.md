---
layout: post
title: How to detect MDI mode in Windows Forms Docking Manager | Syncfusion®
description: Learn how to detect whether a particular control is in MDI mode or not in Syncfusion Windows Forms Docking Manager.
platform: windowsforms
control: DockingManager
documentation: ug
---


# How to detect MDI mode in Windows Forms Docking Manager


`IsMDIMode` method lets you detect whether the specified control is in MDI child mode or not. The return value will be `true` if the control is in MDI mode, else value will be `false`.



{% tabs %}

{% highlight C# %}

this.dockingManager1.IsMDIMode(this.listBox2);

{% endhighlight %}

{% highlight VB %}


Me.dockingManager1.IsMDIMode(Me.listBox2)

{% endhighlight %}

{% endtabs %}

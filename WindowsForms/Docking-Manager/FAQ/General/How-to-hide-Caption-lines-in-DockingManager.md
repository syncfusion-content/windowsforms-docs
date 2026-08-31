---
layout: post
title: How to hide caption lines in Docking Manager | Syncfusion®
description: Learn how to hide caption lines in Syncfusion Windows Forms Docking Manager control using available properties.
platform: WindowsForms
control: DockingManager
documentation: ug
---

# How to hide caption lines in WinForms Docking Control

Caption lines which is displayed in Metro style can be hidden by disabling the `ShowMetroCaptionDottedLines` property.


{% tabs %}

{% highlight C# %}

//To hide the caption lines in Metro style

this.dockingManager1.ShowMetroCaptionDottedLines = false;

{% endhighlight %}

{% highlight VB %}

'To hide the caption lines in Metro style

Me.dockingManager1.ShowMetroCaptionDottedLines = false

{% endhighlight %}

{% endtabs %}


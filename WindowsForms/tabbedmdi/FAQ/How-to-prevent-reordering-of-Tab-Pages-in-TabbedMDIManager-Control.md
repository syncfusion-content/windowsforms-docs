---
layout: post
title: How to Prevent Reordering of Tab Pages in TabbedMDI | Syncfusion®
description: Learn how to prevent reordering of tab pages in Syncfusion Windows Forms TabbedMDI control, its elements and more details.
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to Prevent Reordering of Tab Pages in TabbedMDI

The reordering of tab pages can be prevented by implementing the below code snippet. For this derive a class from TabbedMDIManager and override the MDITabPanel property and set the [UserMoveTabs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_UserMoveTabs) property of MDITabPanel to `true`.

{% tabs %}

{% highlight C# %}



// Derive a class from TabbedMDIManager. 

// Override MDITabPanel property. 

// Set MDITabPanel's UserMoveTabs property to False.

tabPanel.UserMoveTabs = false;

{% endhighlight %}

{% highlight VB %}



' Derive a class from TabbedMDIManager. 

' Override MDITabPanel property. 

' Set MDITabPanel's UserMoveTabs property to False.

tabPanel.UserMoveTabs = False

{% endhighlight %}

{% endtabs %}

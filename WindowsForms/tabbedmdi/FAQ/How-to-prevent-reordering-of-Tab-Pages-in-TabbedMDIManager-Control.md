---
layout: post
title: How-to-prevent-reordering-of-Tab-Pages-in-TabbedMDIManager-Control | WindowsForms | Syncfusion
description: how to prevent reordering of tab pages in tabbedmdimanager control
platform: WindowsForms
control: TabbedMDIPackage
documentation: ug
---

# How to prevent reordering of tab pages in TabbedMDIManager control

The reordering of tab pages can be prevented by implementing the below code snippet. For this derive a class from TabbedMDIManager and override the MDITabPanel property and set the UserMoveTabs property of MDITabPanel to `true`.

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
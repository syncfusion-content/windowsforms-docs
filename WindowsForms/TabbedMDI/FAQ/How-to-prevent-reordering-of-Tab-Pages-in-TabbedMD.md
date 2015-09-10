---
layout: post
title: How-to-prevent-reordering-of-Tab-Pages-in-TabbedMD | WindowsForms | Syncfusion
description: how to prevent reordering of tab pages in tabbedmdimanager control
platform: wpf
control: TabbedMDIPackage
documentation: ug
---

# How to prevent reordering of Tab Pages in TabbedMDIManager Control

The reordering of tab pages can be prevented by implementing the below code snippet. For this derive a class from TabbedMDIManager and override the MDITabPanel property and set the UserMoveTabs property of MDITabPanel to True.

{% highlight c# %}



// Derive a class from TabbedMDIManager. 

// Override MDITabPanel property. 

// Set MDITabPanel's UserMoveTabs property to False.

tabPanel.UserMoveTabs = false;

{% endhighlight %}

{% highlight vbnet %}



' Derive a class from TabbedMDIManager. 

' Override MDITabPanel property. 

' Set MDITabPanel's UserMoveTabs property to False.

tabPanel.UserMoveTabs = False

{% endhighlight %}


---
layout: post
title: How-to-programmatically-select-a-Tab
description: how to programmatically select a tab
platform: WindowsForms
control: TabsPackage
documentation: ug
---

# How to programmatically select a Tab

The following code snippet illustrates the ways to select a Tab programmatically.

{% highlight c# %}



//Select Second Tab.

this.tabControlAdv1.SelectedTab = this.tabPageAdv2;

or

//Select Second Tab.

this.tabControlAdv1.SelectedIndex= 1;

{% endhighlight %}

{% highlight vbnet %}



Private Sub TabControlAdv1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TabControlAdv1.SelectedIndexChanged

'Select Second Tab.

Me.tabControlAdv1.SelectedTab = Me.tabPageAdv2

or

'Select Second Tab.

Me.tabControlAdv1.SelectedIndex = 1

End Sub

{% endhighlight %}




---
layout: post
title: How-to-programmatically-select-a-Tab | WindowsForms | Syncfusion®
description: how to programmatically select a tab
platform: windowsforms
control: TabsPackage
documentation: ug
---

# How to programmatically select a tab?

The following code snippet illustrates the ways to select a Tab programmatically.

{% tabs %}

{% highlight C# %}


//Select Second Tab.

this.tabControlAdv1.SelectedTab = this.tabPageAdv2;

or

//Select Second Tab.

this.tabControlAdv1.SelectedIndex= 1;

{% endhighlight %}

{% highlight VB %}



Private Sub TabControlAdv1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TabControlAdv1.SelectedIndexChanged

'Select Second Tab.

Me.tabControlAdv1.SelectedTab = Me.tabPageAdv2

or

'Select Second Tab.

Me.tabControlAdv1.SelectedIndex = 1

End Sub

{% endhighlight %}

{% endtabs %}


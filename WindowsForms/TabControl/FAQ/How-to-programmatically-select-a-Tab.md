---
layout: post
title: How-to-programmatically-select-a-Tab | WindowsForms | Syncfusion®
description: Clarified TabControlAdv usage and added complete C#/VB examples to show how to programmatically select a tab in WinForms.
platform: windowsforms
control: TabsPackage
documentation: ug
---

# How to programmatically select a tab?

To programmatically select a specific tab in the TabControlAdv, you can use the SelectedIndex property or the SelectedTab property.

> **Note:**  
> `tabControlAdv1` in the below examples refers to an instance of the [`Syncfusion.Windows.Forms.Tools.TabControlAdv`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) control. Ensure the control is defined in the designer or instantiated in code, and its `Name` property is set to `tabControlAdv1`.

{% tabs %}

{% highlight C# %}

// Select Second Tab using SelectedTab
this.tabControlAdv1.SelectedTab = this.tabPageAdv2;

// OR

// Select Second Tab using SelectedIndex
this.tabControlAdv1.SelectedIndex = 1;
{% endhighlight %}

{% highlight VB %}

' Programmatically select a tab inside an event or method
Private Sub TabControlAdv1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TabControlAdv1.SelectedIndexChanged

    ' Select Second Tab using SelectedTab
    Me.tabControlAdv1.SelectedTab = Me.tabPageAdv2

    ' OR

    ' Select Second Tab using SelectedIndex
    Me.tabControlAdv1.SelectedIndex = 1

End Sub

{% endhighlight %}

{% endtabs %}




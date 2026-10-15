---
layout: post
title: How to Apply Office2007 Themes in TabbedMDI | Syncfusion®
description: Learn how to apply the Office2007 Silver, Blue, and Black themes to the tabs in the Syncfusion Windows Forms TabbedMDI control.
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to Apply Office2007 Themes in WinForms TabbedMDI

You can apply [Office2007ColorScheme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_Office2007ColorScheme) when TabControl is added as follows.

{% tabs %}

{% highlight c# %}



private void tabbedMDIManager_TabControlAdded(object sender, TabbedMDITabControlEventArgs args)

{

    args.TabControl.Office2007ColorScheme = Office2007Theme.Black;

} 

{% endhighlight %}

{% highlight VB %}



Private Sub tabbedMDIManager_TabControlAdded(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.TabbedMDITabControlEventArgs)

    args.TabControl.Office2007ColorScheme = Office2007Theme.Black

End Sub

{% endhighlight %}

{% endtabs %}

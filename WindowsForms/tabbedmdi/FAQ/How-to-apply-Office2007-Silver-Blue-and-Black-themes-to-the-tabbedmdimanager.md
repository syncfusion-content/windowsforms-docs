---
layout: post
title: How-to-apply-themes | WindowsForms | Syncfusion®
description: how to apply office2007 silver, blue, and black themes to the tabbedmdimanager
platform: windowsforms
control: TabbedMDIPackage
documentation: ug
---

# How to apply Office2007 Silver, Blue, and Black themes to the TabbedMDIManager

You can apply [Office2007ColorScheme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_Office2007ColorScheme) when TabControl is added as follows.

{% tabs %}

{% highlight C# %}



private void tabbedMDIManager_TabControlAdded(object sender, TabbedMDITabControlEventArgs args)

{

    args.TabControl.Office2007ColorScheme = Office2007Theme.Black;

} 

{% endhighlight %}

{% highlight VB %}



Private Sub tabbedMDIManager_TabControlAdded(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.TabbedMDITabControlEventArgs)

    tabControl = args.TabControl

    args.TabControl.Office2007ColorScheme = Office2007Theme.Black

End Sub

{% endhighlight %}

{% endtabs %}

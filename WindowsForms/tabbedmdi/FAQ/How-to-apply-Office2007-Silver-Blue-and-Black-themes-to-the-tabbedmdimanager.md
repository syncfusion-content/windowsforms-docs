---
layout: post
title: How-to-apply-Office2007-Silver-Blue-and-Black-themes-to-the-tabbedmdimanager | WindowsForms | Syncfusion
description: how to apply office2007 silver, blue, and black themes to the tabbedmdimanager
platform: WindowsForms
control: TabbedMDIPackage
documentation: ug
---

# How to apply Office2007 Silver, Blue, and Black themes to the TabbedMDIManager

You can apply Office2007ColorScheme when TabControl is added as follows.

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
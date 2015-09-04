---
layout: post
title: How-to-change-the-backcolor-of-Active-and-Inactive-tabs
description: how to change the backcolor of active and inactive tabs
platform: windowsforms
control: TabbedMDIPackage
documentation: ug
---

# How to change the backcolor of Active and Inactive tabs

You can change the tab back color for active tabs and inactive tabs using ActiveTabColor and InactiveTabColor properties. The following code snippet illustrates this.

{% highlight c# %}



private void tabbedMDIManager_TabControlAdded(object sender, TabbedMDITabControlEventArgs args)

{

    args.TabControl.ActiveTabColor = Color.Red;

    args.TabControl.InactiveTabColor = Color.Green;



}

{% endhighlight %}

{% highlight vbnet %}



Private Sub tabbedMDIManager_TabControlAdded(ByVal sender As Object, ByVal args As TabbedMDITabControlEventArgs)

    args.TabControl.ActiveTabColor = Color.Red

    args.TabControl.InactiveTabColor = Color.Green

End Sub

{% endhighlight %}

N> ActiveTabColor property work only for 2D, 3D, Workbook Mode, OneNoteStyle and not for other tabStyles.


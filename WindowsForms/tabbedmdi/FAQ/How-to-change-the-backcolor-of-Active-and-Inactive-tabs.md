---
layout: post
title: Backcolor-of-Active-Inactive-tabs | WindowsForms | Syncfusion®
description: how to change the backcolor of active and inactive tabs
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to change the back color of Active and Inactive tabs

You can change the tab back color for active tabs and inactive tabs using [ActiveTabColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ActiveTabColor) and [InactiveTabColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_InactiveTabColor) properties. The following code snippet illustrates this.

{% tabs %}

{% highlight C# %}



private void tabbedMDIManager_TabControlAdded(object sender, TabbedMDITabControlEventArgs args)

{

    args.TabControl.ActiveTabColor = Color.Red;

    args.TabControl.InactiveTabColor = Color.Green;



}

{% endhighlight %}

{% highlight VB %}



Private Sub tabbedMDIManager_TabControlAdded(ByVal sender As Object, ByVal args As TabbedMDITabControlEventArgs)

    args.TabControl.ActiveTabColor = Color.Red

    args.TabControl.InactiveTabColor = Color.Green

End Sub

{% endhighlight %}

{% endtabs %}

N> [ActiveTabColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ActiveTabColor) property work only for 2D, 3D, Workbook Mode, OneNoteStyle and not for other tabStyles.


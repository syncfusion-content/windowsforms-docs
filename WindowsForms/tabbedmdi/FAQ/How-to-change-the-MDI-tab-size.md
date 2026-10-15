---
layout: post
title: How to Change MDI Tab Size in TabbedMDI | Syncfusion®
description: Learn how to change the size of the MDI tabs in the Syncfusion Windows Forms TabbedMDI control using the ItemSize property.
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to Change MDI Tab Size in WinForms TabbedMDI

You should handle the `TabControlAdded` event handler and use the [ItemSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ItemSize) property to change the tab size.

{% tabs %}

{% highlight c# %}



// Handle the TabControlAdded event. 

this.tabbedMDIManager.TabControlAdded += new TabbedMDITabControlEventHandler(tabbedMDIManager_TabControlAdded); 

private void tabbedMDIManager_TabControlAdded(object sender, TabbedMDITabControlEventArgs args) 

{ 

// To change the size. 

args.TabControl.ItemSize = new Size(40, 40); 

}

{% endhighlight %}

{% highlight VB %}



' Handle the TabControlAdded event. 

AddHandler tabbedMDIManager.TabControlAdded, AddressOf tabbedMDIManager_TabControlAdded

Private Sub tabbedMDIManager_TabControlAdded(ByVal sender As Object, ByVal args As TabbedMDITabControlEventArgs)

' To change the size. 

args.TabControl.ItemSize = New Size(40, 40)

End Sub


{% endhighlight %}

{% endtabs %}

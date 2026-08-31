---
layout: post
title: How to prevent closing in Windows Forms Docking Manager | Syncfusion®
description: Learn how to prevent closing of docked window in Syncfusion Windows Forms Docking Manager control with code samples.
platform: windowsforms
control: DockingManager
documentation: ug
---

# How to prevent closing in WinForms Docking Control

Closing of docked window can be restricted using `DockVisibilityChanging` event. When the end users tries to change the docked window visibility, this event will be handled. The members of this event is as follows.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
This property gets/sets the value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Control</td><td>
Gets the control which is undergoing the transfer.</td></tr>
</table>


{% tabs %}

{% highlight C# %}


private void dockingManager1_DockVisibilityChanging(object sender, Syncfusion.Windows.Forms.Tools.DockVisibilityChangingEventArgs arg)

{

     arg.Cancel = true;

}

{% endhighlight %}


{% highlight VB %}

Private Sub dockingManager1_DockVisibilityChanging(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockVisibilityChangingEventArgs) Handles dockingManager1.DockVisibilityChanging

     arg.Cancel = True

End Sub

{% endhighlight %}

{% endtabs %}


Additionally, the dock visibility of a control can be retrieved using `GetDockVisibility` method by passing the control as the parameter. Also DockVisibility can be set for the controls using `SetDockVisibility` method.


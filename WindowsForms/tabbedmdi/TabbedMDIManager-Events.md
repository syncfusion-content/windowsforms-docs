---
layout: post
title: TabbedMDIManager Events in Windows Forms TabbedMDI | Syncfusion®
description: Learn about TabbedMDIManager Events support in Syncfusion® Windows Forms TabbedMDI control and more details.
platform: windowsforms
control: TabbedMDIManager 
documentation: ug
---

# TabbedMDIManager Events in Windows Forms TabbedMDI

The list of events and a detailed explanation about each of them is given in the following sections.

Events table

<table>
<tr>
<th>
 TabbedMDIManager events</th><th>
Description</th></tr>
<tr>
<td>
BeforeMDIChildAdded event</td><td>
This event is handled before an MDI child is added to the TabbedMDIManager.</td></tr>
<tr>
<td>
BeforeDropDownPopup event</td><td>
This event is handled to set the visual drop-down styles for the drop-down button. </td></tr>
<tr>
<td>
TabControlAdded event</td><td>
Using this event, the fonts of active and inactive tabs can be customized.</td></tr>
<tr>
<td>
TabControlAdding event</td><td>
This event is handled when a tab control is added.</td></tr>
<tr>
<td>
TabControlRemoved event</td><td>
This event is handled after a tab control is removed from a tab group.</td></tr>
<tr>
<td>
UnLockingMdIClient event</td><td>
This event is handled to notify that the locked MDI client area is being unlocked.</td></tr>
</table>

## BeforeMDIChildAdded event

This [BeforeMDIChildAdded event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html) occurs before an MDIChild is added to the TabbedMDIManager.

{% tabs %}

{% highlight C# %}



private void tabbedMDIManager1_BeforeMDIChildAdded(object sender, MDIChildAddCancelEventArgs e)

{

MessageBox.Show(args.NewControl.ToString() + "is added!");

}

{% endhighlight %}

{% highlight VB %}



Private Sub tabbedMDIManager1_BeforeMDIChildAdded(ByVal sender As Object, ByVal e As MDIChildAddCancelEventArgs)

MessageBox.Show(args.NewControl.ToString() + "is added!")

End Sub

{% endhighlight %}

{% endtabs %}

## BeforeDropDownPopup event

This [BeforeDropDownPopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html) events is discussed in [DropDown Button](https://help.syncfusion.com/windowsforms/tabbedmdi/button-settings#drop-down-button) topic.

## TabControlAdded event

This [TabControlAdded](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html) event is explained in how to customize the fonts of Active and Inactive Tabs topic under Frequently Asked Questions. 

## TabControlAdding event

This [TabControlAdding](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html) event is handled when a tab control is added and it provides options to customize tab controls.

{% tabs %}

{% highlight C# %}



private void tabbedMDIManager1_TabControlAdding(object sender, TabbedMDITabControlEventArgs e)

{

MessageBox.Show(e.TabControl.Text.ToString());

}

{% endhighlight %}

{% highlight VB %}



Private Sub tabbedMDIManager1_TabControlAdding(ByVal sender As Object, ByVal e As TabbedMDITabControlEventArgs)

MessageBox.Show(e.TabControl.Text.ToString())

End Sub

{% endhighlight %}

{% endtabs %}

## TabControlRemoved event

This [TabControlRemoved](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html) event is handled after a tab control is removed from a tab group.

{% tabs %}

{% highlight C# %}



private void tabbedMDIManager1_TabControlRemoved(object sender, TabbedMDITabControlEventArgs e)

{

MessageBox.Show(e.TabControl.Text.ToString());

}

{% endhighlight %}

{% highlight VB %}



Private Sub tabbedMDIManager1_TabControlRemoved(ByVal sender As Object, ByVal e As TabbedMDITabControlEventArgs)

MessageBox.Show(e.TabControl.Text.ToString())

End Sub

{% endhighlight %}

{% endtabs %}



## UnLockingMdIClient event

This [UnLockingMdIClient](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html) event is handled to notify that the locked MDI client area is being unlocked.

{% tabs %}

{% highlight C# %}



private void tabbedMDIManager1_UnLockingMdiClient(object sender, EventArgs e)

{

Console.Write("UnlockingMDIClient event is Raised");

}

{% endhighlight %}

{% highlight VB %}



Private Sub tabbedMDIManager1_UnLockingMdiClient(ByVal sender As Object, ByVal e As EventArgs)

Console.Write("UnlockingMDIClient event is Raised")

End Sub

{% endhighlight %}

{% endtabs %}

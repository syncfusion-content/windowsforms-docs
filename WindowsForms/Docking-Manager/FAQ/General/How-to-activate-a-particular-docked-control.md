---
layout: post
title: How to activate a particular docked control in Docking Manager | Syncfusion®
description: Learn how to activate a particular docked control in Syncfusion Windows Forms Docking Manager control with examples.
platform: windowsforms
control: DockingManager
documentation: ug
---


# How to activate a particular docked control in Docking Manager

To activate particular docked control, call the `ActivateControl` method inside NewDockStateEndLoad event.

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
ActivateControl</td><td>
Activates the docked control which is passed as a parameter to this method. This method will be effective only when the control is tabbed to other control or controls. This method can be called from a handler for DockingManager.NewDockStateEndLoad Event. The parameter is,{{ 'Ctrl' | markdownify }} - Indicates the docking window.</td></tr>
</table>

{% tabs %}
{% highlight C# %}
//The NewDockStateEndLoad event occurs immediately after a new dock state has been loaded.
private void dockingManager1_NewDockStateEndLoad(object sender, System.EventArgs e)
{
    this.dockingManager1.ActivateControl(this.listBox1);
    Console.WriteLine("Listbox is activated");
}
{% endhighlight %}
{% highlight VB %}
'The NewDockStateEndLoad event occurs immediately after a new dock state has been loaded.
Private Sub dockingManager1_NewDockStateEndLoad(ByVal sender As Object, ByVal e As System.EventArgs)
    Me.dockingManager1.ActivateControl(Me.listBox1)
    Console.WriteLine("Listbox is activated")
End Sub
{% endhighlight %}
{% endtabs %}



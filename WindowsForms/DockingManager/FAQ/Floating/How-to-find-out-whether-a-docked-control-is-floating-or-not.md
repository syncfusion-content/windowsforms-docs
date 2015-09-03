---
layout: post
title: How to find out whether a docked control is floating or not
description: How to find out whether a docked control is floating or not
platform: WindowsForms
control: Control Name undefined
documentation: ug
---

# How to find out whether a docked control is floating or not?

This can be achieved by calling IsFloating method.

This method returns a value indicating whether the control is in docked or floating state. If the control is in floating state, the value returned will be true, and if it is docked, value returned will be false.

Table 104: Methods Table

<table>
<tr>
<td>
Method</td><td>
Description</td></tr>
<tr>
<td>
IsFloating</td><td>
Gets the value indicating whether the docked control is floating or not.{{ 'Ctrl' | markdownify }} - Indicates the control for which dock / floating state is been queried.</td></tr>
</table>

{% highlight C# %}


private void button1_Click(object sender, EventArgs e)

{

this.dockingManager1.IsFloating(this.panel1);

Console.Write("Dock state : " + this.dockingManager1.IsFloating(this.panel1));

}
{% endhighlight %}

{% highlight vbnet %}





Private Sub dockingManager1_NewDockStateEndLoad(ByVal sender As Object, ByVal e As System.EventArgs)

Me.dockingManager1.IsFloating(Me.panel1)

Console.Write("Dock state : " + Me.dockingManager1.IsFloating(Me.panel1))

End Sub
{% endhighlight %}






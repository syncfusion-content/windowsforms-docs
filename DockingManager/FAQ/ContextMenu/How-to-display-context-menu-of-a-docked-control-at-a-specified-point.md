---
layout: post
title: How to display context menu of a docked control at a specified point | WindowsForms | Syncfusion
description: How to display context menu of a docked control at a specified point
platform: WindowsForms
control: DockingManager
documentation: ug
---

# How to display context menu of a docked control at a specified point?

This can be done using ShowMenu method.

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
ShowMenu</td><td>
Show's the docking caption context menu at the specified point (Pt). The parameters are,{{ 'Ctrl' | markdownify }} - Indicates the control for which dock / floating state is been queried.{{ 'Pt' | markdownify }} - Indicates the location of the menu to be displayed.</td></tr>
</table>

{% highlight C# %}





private void button1_Click(object sender, EventArgs e)

{

this.dockingManager1.ShowMenu(this.listBox1, new Point(100,100)); 

}
{% endhighlight %}

{% highlight xml %}





Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Me.dockingManager1.ShowMenu(Me.listBox1, New Point(100,100))

End Sub
{% endhighlight %}



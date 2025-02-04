---
layout: post
title: How to detect the docking style assigned to a control | WindowsForms | Syncfusion®
description: How to detect the docking style assigned to a control
platform: windowsforms
control: DockingManager
documentation: ug
---


# How to detect the docking style assigned to a control?

Docking style which is assigned to the control can be detect at run time, using `GetDockingStyle` method.


<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
GetDockingStyle</td><td>
Returns the current docking style of the control. The return value for this method would be docking style value, that specifies the dock type/position. The docked control for which the dock style is to be identified should be passed as a parameter to this method. The parameter is,{{ 'Ctrl' | markdownify }} - Indicates the docked control for which the DockStyle needs to be retrieved.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


//Getting the docking style

private void button1_Click(object sender, EventArgs e)

{

this.dockingManager1.GetDockStyle(this.panel1);

Console.Write("Dock style :" + this.dockingManager1.GetDockStyle(this.panel1));

}
{% endhighlight %}


{% highlight VB %}


'Getting the docking style

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Me.dockingManager1.GetDockStyle(this.panel1)

Console.Write("Dock style :" + this.dockingManager1.GetDockStyle(this.panel1))

End Sub

{% endhighlight %}

{% endtabs %}


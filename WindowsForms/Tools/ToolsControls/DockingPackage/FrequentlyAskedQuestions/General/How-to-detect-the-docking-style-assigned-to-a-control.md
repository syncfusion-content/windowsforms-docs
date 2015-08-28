---
layout: post
title: How to detect the docking style assigned to a control
description: How to detect the docking style assigned to a control
platform: windowsforms
control: Control Name undefined
documentation: ug
---


# How to detect the docking style assigned to a control?

 You can detect the Docking style that is assigned to the control, at run time, using GetDockingStyle method.

Table 98: Method Table

<table>
<tr>
<td>
Method</td><td>
Description</td></tr>
<tr>
<td>
GetDockingStyle</td><td>
Returns the current docking style of the control. The return value for this method would be docking style value, that specifies the dock type / position. The docked control for which the dock style is to be identified should be passed as a parameter to this method. The parameter is,{{ 'Ctrl' | markdownify }} - Indicates the docked control for which the DockStyle needs to be retrieved.</td></tr>
</table>


{% highlight C# %}





//Getting the docking style

private void button1_Click(object sender, EventArgs e)

{

this.dockingManager1.GetDockStyle(this.panel1);

Console.Write("Dock style :" + this.dockingManager1.GetDockStyle(this.panel1));

}
{% endhighlight %}





{% highlight vbnet %}


'Getting the docking style

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Me.dockingManager1.GetDockStyle(this.panel1)

Console.Write("Dock style :" + this.dockingManager1.GetDockStyle(this.panel1))

End Sub
{% endhighlight %}


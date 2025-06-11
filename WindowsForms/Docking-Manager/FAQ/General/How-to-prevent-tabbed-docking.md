---
layout: post
title: How to prevent tabbed docking | WindowsForms | Syncfusion®
description: How to prevent tabbed docking
platform: windowsforms
control: DockingManager
documentation: ug
---

# How to prevent tabbed docking?

DockAllow event will be handled when a docking window is dragged over a potential dock target. In other words, whenever the user tries to dock a docked control to another docked control, this event will be raised. This lets you decide whether to allow tabbing or not. Giving arg.Cancel to `true` cancels the docking operation.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
DockStyle</td><td>
Represents the docking style.</td></tr>
<tr>
<td>
DragControl</td><td>
Gets the control that is being dragged.</td></tr>
<tr>
<td>
TargetControl</td><td>
The dock target control.</td></tr>
<tr>
<td>
Cancel</td><td>
This property gets/sets the value indicating whether the event should be canceled.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


//The DockAllow event occurs when a docking window is dragged over a potential dock target. 

private void dockingManager1_DockAllow(object sender, Syncfusion.Windows.Forms.Tools.DockAllowEventArgs arg)

{

     //Checks if the each controls are trying to dock with each other, by DragControl and DockControl property  

     if (((arg.DragControl == this.panel1) && (arg.TargetControl == this.panel2))

     || ((arg.DragControl == this.panel2) && (arg.TargetControl == this.panel1)))

     {

         //Cancel the Docking Action. 

         arg.Cancel = true;

     }

} 

{% endhighlight %}

{% highlight VB %}


'The DockAllow event occurs when a docking window is dragged over a potential dock target. 

Private Sub dockingManager1_DockAllow(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockAllowEventArgs) Handles dockingManager1.DockAllow



     'Checks if the each controls are trying to dock with each other, by DragControl and DockControl property  

     If ((arg.DragControl Is Me.panel1) AndAlso (arg.TargetControl Is Me.panel2)) OrElse ((arg.DragControl Is Me.panel2) AndAlso (arg.TargetControl Is Me.panel1)) Then

         'Cancel the Docking Action. 

         arg.Cancel = True

     End If

End Sub

{% endhighlight %}

{% endtabs %}


---
layout: post
title: How to get or set the size of the docked control | WindowsForms | Syncfusion®
description: How to get or set the size of the docked control
platform: windowsforms
control: DockingManager
documentation: ug
---

# How to get or set the size of the docked control?

`GetControlSize` and `SetControlSize` methods lets you get or set the size of the control respectively.

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
GetControlSize</td><td>
Gets the size of the docked or the floating control, by passing the control as a parameter to this method. The parameters are,{{ 'Ctrl' | markdownify }} - Indicates the docking window.</td></tr>
<tr>
<td>
SetControlSize</td><td>
Sets the new size (width, Height) for the docked or the floating control, by passing the control as a parameter to this method. The default value of size is Empty. The parameters are,{{ 'Ctrl'  | markdownify }}- Indicates the docking window.{{ 'Size' | markdownify }} - Specifies the new size for the control.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//Get the size of docked or Floating control using the GetControlSize method

this.dockingManager1.GetControlSize(this.panel2);

Console.Write("Size" + this.dockingManager1.GetControlSize(this.panel2));


//Set the size of docked or Floating control using the GetControlSize method

this.dockingManager1.SetControlSize(this.panel1, new Size(100, 50));

{% endhighlight %}


{% highlight VB %}


'Get the size of docked or Floating control using the GetControlSize method

Me.dockingManager1.GetControlSize(Me.panel2)

Console.Write("Size" + Me.dockingManager1.GetControlSize(Me.panel2))



'Set the size of docked or Floating control using the GetControlSize method

this.dockingManager1.SetControlSize(this.panel1, new Size(100, 50));

{% endhighlight %}

{% endtabs %}



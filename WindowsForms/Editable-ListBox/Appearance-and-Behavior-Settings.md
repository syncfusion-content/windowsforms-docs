---
layout: post
title: Appearance and Behavior Settings in Editable ListBox | Syncfusion®
description: Learn about Appearance and Behavior Settings support in Syncfusion® Windows Forms Editable ListBox (EditableList) control and more details.
platform: windowsforms
control: EditorsPackage
documentation: ug
---
# Appearance and Behavior Settings in WinForms Editable ListBox

This section discusses the complete Appearance and behavior settings of EditableList control.

## Embedded Controls

EditableList control contains embedded controls such as Button, TextBox and ListBox.

<table>
<tr>
<th>
EditableList  Embedded controls</th><th>
Description</th></tr>
<tr>
<td>
Button</td><td>
It includes the properties and events present in the windows Button.</td></tr>
<tr>
<td>
TextBox</td><td>
It includes the properties and events present in the windows TextBox.</td></tr>
<tr>
<td>
ListBox</td><td>
The listbox property of editable list, expands and allows the user to set various appearance and behavior properties of the EditableList.</td></tr>
</table>

## Auto Scrolling

You can enable scrollbars automatically for the EditableList control when its items are shown beyond its size by setting AutoScroll to true. When AutoScroll is enabled for the control, you can set the margin and logical size for the autoscroll region by AutoScrollMargin and AutoScrollMinSize properties.

<table>
<tr>
<th>
EditableList  Properties</th><th>
Description</th></tr>
<tr>
<td>
AutoScroll</td><td>
It indicates whether Scrollbars will automatically appear if controls are placed outside the form's client area.</td></tr>
<tr>
<td>
AutoScrollMargin</td><td>
It sets margin around the controls during AutoScroll.</td></tr>
<tr>
<td>
AutoScrollMinSize</td><td>
It sets the minimum logical size for the AutoScroll region.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.editableList1.AutoScroll = true;
this.editableList1.AutoScrollMargin = new System.Drawing.Size(2, 2);
this.editableList1.AutoScrollMinSize = new System.Drawing.Size(3, 3);

{% endhighlight %}

{% highlight vb %}

Me.editableList1.AutoScroll = True
Me.editableList1.AutoScrollMargin = New System.Drawing.Size(2, 2)
Me.editableList1.AutoScrollMinSize = New System.Drawing.Size(3, 3)

{% endhighlight %}
{% endtabs %}

## Dock Padding

Dock padding determines the size of the border for the docked controls.

<table>
<tr>
<th>
EditableList  Property</th><th>
Description</th></tr>
<tr>
<td>
DockPadding</td><td>
Gets the dock padding for all edges of the control.</td></tr>
</table>

The following image displays the EditableList control with the dock padding for all the edges set to 5.

![Appearance-and-Behavior-Settings_img1](Appearance-and-Behavior-Settings_images/Appearance-and-Behavior-Settings_img1.png)

{% tabs %}
{% highlight c# %}

this.editableList1.DockPadding.All = 5;

{% endhighlight %}

{% highlight vb %}

Me.editableList1.DockPadding.All = 5

{% endhighlight %}
{% endtabs %}

## Want Button

You can display the button to the right while editing the items in the EditableList control by setting WantButton to true.

<table>
<tr>
<th>
EditableList  Property</th><th>
Description</th></tr>
<tr>
<td>
WantButton</td><td>
Specifies whether to show button to the right while editing.</td></tr>
</table>

![Appearance-and-Behavior-Settings_img2](Appearance-and-Behavior-Settings_images/Appearance-and-Behavior-Settings_img2.png)

{% tabs %}
{% highlight c# %}

this.editableList1.WantButton = true;

{% endhighlight %}

{% highlight vb %}

Me.editableList1..WantButton = True

{% endhighlight %}
{% endtabs %}

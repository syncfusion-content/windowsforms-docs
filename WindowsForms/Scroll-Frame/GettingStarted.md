---
layout: post
title: Getting Started with Windows Forms Scroll Frame | Syncfusion®
description: Learn here about getting started with Syncfusion® Windows Forms Scroll Frame (SfScrollFrame) control, its elements and more details.
platform: WindowsForms
control: SfScrollFrame
documentation: ug
---

# Getting Started with Windows Forms Scroll Frame (SfScrollFrame)

## Assembly deployment

The following list of assembly should be added as reference to use [SfScrollFrame](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfScrollFrame.html) component in any application:

<table>
<tr>
<td>
{{'**Required Assembly**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.Core.WinForms
</td>
<td>
Syncfusion.Core.WinForms assembly contains the theme related classes for the Syncfusion<sup>®</sup> controls and basic components like SfToolTip, SfButton, SfForm, and SfSkinManager.
</td>
</tr>
</table>

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sfscrollframe) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application. 

## Attaching SfScrollFrame to a control

This section describes how to attach the `SfScrollFrame` to a `ListView` Control.

### Through designer

The `SfScrollFrame` can be attached to any control through designer by assigning the [Control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfScrollFrame.html#Syncfusion_WinForms_Controls_SfScrollFrame_Control) property.

![Scroll Frame control attached through designer in Winforms application](sfscrollframe_images/winforms-scroll-frame-attached-through-designer.jpg)

#### Designer generated code

{% tabs %}
{% highlight c# %}
SfScrollFrame sfScrollFrame1 = new SfScrollFrame();
ListView listView1 = new System.Windows.Forms.ListView(); 
 this.OrderID = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
this.CustomerID = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
this.Quantity = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
this.sfScrollFrame1 = new Syncfusion.WinForms.Scroll.SfScrollFrame();
this.SuspendLayout();
// 
// listView1
// 
this.listView1.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
this.OrderID,
this.CustomerID,
this.columnHeader1,
this.Quantity});
this.listView1.Location = new System.Drawing.Point(30, 29);
this.listView1.Name = "listView1";
this.listView1.Size = new System.Drawing.Size(379, 285);
this.listView1.TabIndex = 6;
this.listView1.UseCompatibleStateImageBehavior = false;
this.listView1.View = System.Windows.Forms.View.Details;
// 
// sfScrollFrame1
// 
this.sfScrollFrame1.Control = this.listView1;
{% endhighlight %}
{% endtabs %}

### Through code

To programmatically attach the SfScrollFrame to a control, set the [Control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfScrollFrame.html#Syncfusion_WinForms_Controls_SfScrollFrame_Control) property to the appropriate value. 

{% tabs %}
{% highlight c# %}
//Attach SfScrollFrame to the list view control.
this.sfScrollFrame1.Control = listView1;
{% endhighlight %}
{% endtabs %}

## Programmatic scrolling

The scroll frame can be programmatically scrolled by setting the [Value](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.ScrollProperties.html#Syncfusion_WinForms_Controls_ScrollProperties_Value) property of the corresponding scrollbar.  

{% tabs %}
{% highlight c# %}
// To scroll the control to the specific position.
this.sfScrollFrame1.HorizontalScrollBar.Value = 100;
this.sfScrollFrame1.VerticalScrollBar.Value = 100;
{% endhighlight %}
{% endtabs %}

![Scroll Frame control attached through code in Winforms application](sfscrollframe_images/winforms-scroll-frame-attached-throug-code.jpg)

### Changing the SmallChange value

The scrolling speed of the horizontal and vertical scrollbars of the SfScrollFrame can be customized by setting the [SmallChange](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.ScrollProperties.html#Syncfusion_WinForms_Controls_ScrollProperties_SmallChange) property to increase the scroll speed for the min or max button click of the scrollbar.

{% tabs %}
{% highlight c# %}
//Set Horizontal & vertical scrollbar small change
this.sfScrollFrame1.HorizontalScrollBar.SmallChange = 10;
this.sfScrollFrame1.VerticalScrollBar.SmallChange = 10;
{% endhighlight %}
{% endtabs %}

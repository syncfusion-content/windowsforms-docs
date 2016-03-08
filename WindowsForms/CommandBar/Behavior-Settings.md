---
layout: post
title: Behavior-Settings | Windows Forms | Syncfusion
description: behavior settings
platform: windowsforms
control: CommandBars
documentation: ug
---

# Behavior Settings

The behavior settings of the CommandBar control are given below.

## Cursor

The cursor settings of the CommandBar can be customized using the property given below.


<table>
<tr>
<th>
CommandBar Property</th><th>
Description</th></tr>
<tr>
<td>
Cursor</td><td>
The mouse cursor used for the CommandBar.</td></tr>
</table>

{% highlight C# %}






this.commandBar1.Cursor = System.Windows.Forms.Cursors.Hand;
{% endhighlight %}

{% highlight vbnet %}




Me.commandBar1.Cursor = System.Windows.Forms.Cursors.Hand

{% endhighlight %}
N> The ResetCursor() method can be used to reset the Cursor property to it's default value.

## Row Index and Offset

The index and offset settings of rows can be customized using the properties given below.


<table>
<tr>
<th>
CommandBar Property</th><th>
Description</th></tr>
<tr>
<td>
RowIndex</td><td>
Gets / sets the index of the row or column for the CommandBar.</td></tr>
<tr>
<td>
RowOffset</td><td>
Gets / sets the linear offset of the CommandBar within a row.</td></tr>
</table>

{% highlight C# %}





this.commandBar1.RowIndex = 1;

this.commandBar1.RowOffset = 1;

{% endhighlight %}

{% highlight vbnet %}





Me.commandBar1.RowIndex = 0

Me.commandBar1.RowOffset = 0
{% endhighlight %}

## Visible / Hidden CommandBar

The CommandBar control can be hidden using the property given below.


<table>
<tr>
<th>
CommandBar Property</th><th>
Description</th></tr>
<tr>
<td>
Visible</td><td>
Determines whether the control is visible or hidden. The default value is set to 'True'.</td></tr>
</table>

{% highlight C# %}





this.commandBar1.Visible = true;
{% endhighlight %}

{% highlight vbnet %}





Me.commandBar1.Visible = True
{% endhighlight %}

## RightToLeft

The elements of the CommandBarController can be aligned from right to left and vice versa using the property given below.


<table>
<tr>
<th>
CommandBarController Property</th><th>
Description</th></tr>
<tr>
<td>
RightToLeft</td><td>
Gets a value indicating whether the control's elements are aligned from right to left.</td></tr>
</table>

{% highlight C# %}





this.commandBarController1.RightToLeft = true;
{% endhighlight %}

{% highlight vbnet %}





Me.commandBarController1.RightToLeft = True
{% endhighlight %}




---
layout: post
title: Working with SfNumericTextBox in Windows Forms | Syncfusion®
description: Learn about working with the Syncfusion Windows Forms Numeric TextBox (SfNumericTextBox) control, including the ValueChanged event and its event data.
platform: windowsforms
control: SfNumericTextBox
documentation: ug
---

# Working with WinForms Numeric TextBox

## ValueChanged Event

This [ValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html) event triggers when the value of the WinForms Numeric TextBox is changed. The value will be changed according to the `ValueChangedMode` property.

## Event Data

`ValueChangedEventArgs` contains the following members that provide information specific to this event.

The following table describes the members of the `ValueChangedEventArgs` class.

<table>
<tr>
<td>
{{'**Members**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
OldValue
</td>
<td>
Returns the last value of the WinForms Numeric TextBox.
</td>
</tr>
<tr>
<td>
NewValue
</td>
<td>
Returns the new value of the WinForms Numeric TextBox.
</td>
</tr>
</table>

{% tabs %}

{% highlight c# %}

// Hooking the value changed event
this.numericTextBox.ValueChanged += numericTextBox_ValueChanged;

// Value changed event
private void numericTextBox_ValueChanged(object sender, Syncfusion.WinForms.Input.Events.ValueChangedEventArgs e)
{
    double? newValue = e.NewValue;
    double? oldValue = e.OldValue;
}

{% endhighlight %}

{% highlight VB %}

' Hooking the value changed event
AddHandler Me.numericTextBox.ValueChanged, AddressOf numericTextBox_ValueChanged

' Value changed event
Private Sub numericTextBox_ValueChanged(ByVal sender As Object, ByVal e As Syncfusion.WinForms.Input.Events.ValueChangedEventArgs)
    Dim newValue As Double? = e.NewValue
    Dim oldValue As Double? = e.OldValue
End Sub

{% endhighlight %}

{% endtabs %}

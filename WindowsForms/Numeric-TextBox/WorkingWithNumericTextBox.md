---
layout: post
title: Working with NumericTextBox in WinForms Numeric TextBox | Syncfusion®
description: Learn about Working with NumericTextBox support in Syncfusion® Windows Forms Numeric TextBox (SfNumericTextBox) control and more details.
platform: windowsforms
control: SfNumericTextBox
documentation: ug
---

# Working with NumericTextBox in Windows Forms Numeric TextBox

## ValueChanged Event

This [ValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html) event triggers when the value of the SfNumericTextBox is changed. The Value will be changed according to the ValueChangedMode property.

## Event Data

`ValueChangedEventArgs` contains the following members that provide information specific to this event.

Value changed Event

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
This property returns the last Value of the SfNumericTextBox
</td>
</tr>
<tr>
<td>
NewValue
</td>
<td>
This property returns the new Value of the SfNumericTextBox
</td>
</tr>
</table>

{% tabs %}

{% highlight C# %}

// Hooking the value changed event
this.numericTextBox.ValueChanged += numericTextBox_ValueChanged;

//Value changed event
private void numericTextBox _ValueChanged(object sender, Syncfusion.WinForms.Input.Events.ValueChangedEventArgs e)
{
	double? newValue = e.NewValue;
	double? oldValue = e.OldValue;
}

{% endhighlight %}

{% highlight VB %}

' Hooking the value changed event
Private Me.numericTextBox.ValueChanged += AddressOf numericTextBox_ValueChanged

'Value changed event
Private Sub numericTextBox _ValueChanged(ByVal sender As Object, ByVal e As Syncfusion.WinForms.Input.Events.ValueChangedEventArgs)
	Dim newValue As double? = e.NewValue
	Dim oldValue As double? = e.OldValue
End Sub

{% endhighlight %}

{% endtabs %}

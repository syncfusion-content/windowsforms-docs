---
layout: post
title: Events in Windows Forms IntegerTextBox | Syncfusion®
description: Learn about Integertextbox Events support in Syncfusion Windows Forms IntegerTextBox control, its elements and more details.
platform: windowsforms
control: IntegerTextBox
documentation: ug
---

# Events in WinForms Integer TextBox

The list of events and a detailed explanation about each of them is given in the following sections.

* [BindableValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_BindableValueChanged) - Raised when the BindableValue property changes.
* [ClipTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ClipTextChanged) - Raised when the ClipText property changes.
* [FormattedTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_FormattedTextChanged) - Raised when the FormattedText property changes.
* [IntegerValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_IntegerValueChanged) - Raised when the IntegerValue property changes.
* [SetNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SetNull) - Raised when the NullState is about to be set.
* [ValidationError](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ValidationError) - Raised when the input text is invalid for the current state.

## BindableValueChanged

This [BindableValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html) event occurs when the [BindableValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_BindableValue) property is changed. The [BindableValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_BindableValue) property is a wrapper property that indicates the value. This property can be used to set the value of the control to 'Null'.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void integerTextBox1_BindableValueChanged(object sender, EventArgs e)
{
    Console.WriteLine(" BindableValueChanged event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_BindableValueChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" BindableValueChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## ClipTextChanged

This [ClipTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html) event occurs when the [ClipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ClipText) property is changed. The [ClipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ClipText) property returns the clipped text without the formatting.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void integerTextBox1_ClipTextChanged(object sender, EventArgs e)
{
    Console.WriteLine(" ClipTextChanged event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_ClipTextChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" ClipTextChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## FormattedTextChanged

This [FormattedTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html) event occurs when the [FormattedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_FormattedText) property is changed. The [FormattedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_FormattedText) property returns the formatted text with the formatting.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void integerTextBox1_FormattedTextChanged(object sender, EventArgs e)
{
    Console.WriteLine(" FormattedTextChanged event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_FormattedTextChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" FormattedTextChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## IntegerValueChanged

This [IntegerValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html) event occurs when the [IntegerValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_IntegerValue) property is changed. The [IntegerValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_IntegerValue) property specifies the integer value of the text.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void integerTextBox1_IntegerValueChanged(object sender, EventArgs e)
{
    Console.WriteLine(" IntegerValueChanged event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_IntegerValueChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" IntegerValueChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## SetNull

This event occurs when the [NULLState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NullState) is about to be set based on a value.

The event handler receives an argument of type [SetNullEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SetNullEventArgs.html) containing data related to this event. The following [SetNullEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SetNullEventArgs.html) members provide information specific to this event.

<table>
<tr>
<th>Member</th>
<th>Description</th>
</tr>
<tr>
<td>Cancel</td>
<td>Gets or sets a value indicating whether the event should be canceled.</td>
</tr>
<tr>
<td>NullValue</td>
<td>Returns the value that is being set as `null`.</td>
</tr>
</table>

{% tabs %}
{% highlight C# %}
private void integerTextBox1_SetNull(object sender, Syncfusion.Windows.Forms.Tools.SetNullEventArgs e)
{
    Console.WriteLine(" SetNull event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_SetNull(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.SetNullEventArgs)
Console.WriteLine(" SetNull event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## ValidationError

This [ValidationError](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html) event occurs when the input text is invalid for the current state of the control.

The event handler receives an argument of type [ValidationErrorArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ValidationErrorArgs.html) containing data related to this event. The following [ValidationErrorArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ValidationErrorArgs.html) members provide information specific to this event.

<table>
<tr>
<th>Member</th>
<th>Description</th>
</tr>
<tr>
<td>ErrorMessage</td>
<td>Returns the error message.</td>
</tr>
<tr>
<td>InvalidText</td>
<td>Returns the invalid text as it would have been if the error had not intercepted it.</td>
</tr>
<tr>
<td>StartPosition</td>
<td>Returns the location of the invalid input within the invalid text.</td>
</tr>
</table>

{% tabs %}
{% highlight C# %}
private void integerTextBox1_ValidationError(object sender, Syncfusion.Windows.Forms.Tools.ValidationErrorArgs e)
{
    Console.WriteLine(" ValidationError event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_ValidationError(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.ValidationErrorArgs)
Console.WriteLine(" ValidationError event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

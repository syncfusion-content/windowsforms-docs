---
layout: post
title: IntegerTextBox Events | WindowsForms | Syncfusion
description: IntegerTextBox Events
platform: WindowsForms
control: Tools
documentation: ug
---

# IntegerTextBox Events

The list of events and a detailed explanation about each of them is given in the following sections.

* [BindableValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~BindableValueChanged_EV.html)
* [ClipTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ClipTextChanged_EV.html)
* [FormattedTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~FormattedTextChanged_EV.html)
* [IntegerValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.IntegerTextBox~IntegerValueChanged_EV.html)
* [SetNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~SetNull_EV.html)
* [ValidationError](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ValidationError_EV.html)

## BindableValueChanged

This [BindableValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~BindableValueChanged_EV.html) event occurs when the [BindableValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~BindableValue.html) property is changed. The [BindableValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~BindableValue.html) property is a wrapper property that indicates the value. This property can be used to set the value of the control to 'Null'.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void integerTextBox1_BindableValueChanged(object sender, EventArgs e)
{
    Console.WriteLine(" BindableValueChanged event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_BindableValueChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" BindableValueChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## ClipTextChanged

This [ClipTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ClipTextChanged_EV.html) event occurs when the [ClipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ClipText.html) property is changed. The [ClipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ClipText.html) property returns the clipped text without the formatting.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void integerTextBox1_ClipTextChanged(object sender, EventArgs e)
{
    Console.WriteLine(" ClipTextChanged event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_ClipTextChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" ClipTextChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## FormattedTextChanged

This [FormattedTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~FormattedTextChanged_EV.html) event occurs when the [FormattedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~FormattedText.html) property is changed. The [FormattedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~FormattedText.html) property returns the formatted text with the formatting.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void integerTextBox1_FormattedTextChanged(object sender, EventArgs e)
{
    Console.WriteLine(" FormattedTextChanged event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_FormattedTextChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" FormattedTextChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## IntegerValueChanged

This [IntegerValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.IntegerTextBox~IntegerValueChanged_EV.html) event occurs when the [IntegerValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.IntegerTextBox~IntegerValue.html) property is changed. The [IntegerValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.IntegerTextBox~IntegerValue.html) property specifies the integer value of the text.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void integerTextBox1_IntegerValueChanged(object sender, EventArgs e)
{
    Console.WriteLine(" IntegerValueChanged event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_IntegerValueChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" IntegerValueChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## SetNull

This event occurs when the [NULLState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NullState.html) is to be set based on a value.

The event handler receives an argument of type [SetNullEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.SetNullEventArgs.html) containing data related to this event. The following [SetNullEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.SetNullEventArgs.html) members provide information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets / sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
NullValue</td><td>
Returns the NULL value.</td></tr>
</table>

{% tabs %}
{% highlight C# %}
private void integerTextBox1_SetNull(object sender, Syncfusion.Windows.Forms.Tools.SetNullEventArgs e)
{
    Console.WriteLine(" SetNull event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_SetNull(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.Tools.SetNullEventArgs)
Console.WriteLine(" SetNull event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## ValidationError

This [ValidationError](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ValidationError_EV.html) event occurs when the input text is invalid for the current state of the control.

The event handler receives an argument of type ValidationErrorArgs containing data related to this event. The following ValidationErrorArgs members provide information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
ErrorMessage</td><td>
Returns the error message.</td></tr>
<tr>
<td>
InvalidText</td><td>
Returns the invalid text as it would have been if the error had not intercepted it.</td></tr>
<tr>
<td>
StartPosition</td><td>
Returns the location of the invalid input in the invalid text.</td></tr>
</table>

{% tabs %}
{% highlight C# %}
private void integerTextBox1_ValidationError(object sender, Syncfusion.Windows.Forms.Tools.ValidationErrorArgs e)
{
    Console.WriteLine(" ValidationError event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_ValidationError(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.Tools.ValidationErrorArgs)
Console.WriteLine(" ValidationError event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}
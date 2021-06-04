---
layout: post
title: Event-Handling | CurrencyTextbox | WindowsForms | Syncfusion
description: Learn here about event handling with Syncfusion Windows Forms Currency TextBox control, its elements, and more.
platform: WindowsForms
control: CurrencyTextbox
documentation: ug
---

# Event Handling with Windows Forms Currency TextBox(CurrencyTextbox)

CurrencyTextBox fires events when 3D border style is changed, border color is changed, border sides are changed, decimal value property is changed and when Themes enabled property is changed. Also fires event when the input text is invalid.

**KeyDown:**

The [KeyDown event](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.keydown?view=net-5.0) occurs when a key is pressed while the control has a focus. The event handler receives an argument of type KeyEventArgs. We can handle this event to add keyboard support to the CurrencyTextBox. Refer [Adding the Key Support for Mega and Kilo](https://help.syncfusion.com/windowsforms/currency-textbox/event-handling#adding-key-support).

ValidationError: It occurs when an inappropriate character is encountered. The event handler receives an argument of type ValidationErrorArgs.

The event properties associated with the ValidationErrorArgs are as follows.


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
Returns the location of the invalid input within the invalid text.</td></tr>
</table>


It can be handled to raise an alarm to user when invalid text is entered by them. Refer Error Validation[.](http://help.syncfusion.com/windowsforms/tools)

## KeyDown Event

### Adding Key Support

Sometimes there may occur situations for entering large values, like in Mega, Kilo etc., In such situations if we add some sort of keyboard support, it will be very much useful for the users. For example if we want to enter the value as multiples of thousand, we can use the following method.

{% tabs %}

{% highlight c# %}

private void currencyTextBox1_KeyDown(object sender,KeyEventArgs e)

{

  // Multiplies the Key value with multiples of 1000.

decimal v=currencyTextBox1.DecimalValue;

switch(e.KeyCode)

{

case Keys.G : v=v* 1000000000;break;

case Keys.M : v=v* 1000000;break;

case Keys.K : v=v* 1000;break;

}

currencyTextBox1.DecimalValue=v;

}

{% endhighlight %}

{% highlight vbnet %}

Private  Sub currencyTextBox1_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)

' Multiplies the Key value with multiples of 1000.

Dim v As Decimal = currencyTextBox1.DecimalValue

Select Case e.KeyCode

Case Keys.G

v=v* 1000000000

Case Keys.M

v=v* 1000000

Case Keys.K

v=v* 1000

End Select

currencyTextBox1.DecimalValue=v

End Sub

{% endhighlight %}

{% endtabs %}

So if the user wants to enter 32000, he just needs to enter 32 and then press  'K'. The value will change to 32000.

## Error Validation

When invalid text is entered by the user, we can handle ValidationError event to raise an alarm. Follow the steps below.

* Drag the CurrencyTextBox, ErrorProvider control and TextBox onto the form.
* Handle ValidationError event of CurrencyTextBox.

{% tabs %}

{% highlight c# %}

string item = e.StartPosition.ToString();

string eventlogmessage = String.Format("Event: {0} InvalidText: {1} Position: {2}\r\n", "ValidationError", e.InvalidText, item);

textBox1.Text = textBox1.Text + eventlogmessage;

this.errorProvider1.SetError((Control) sender, eventlogmessage);

{% endhighlight %}

{% highlight vbnet %}

Private item As String = e.StartPosition.ToString()

Private eventlogmessage As String = String.Format("Event: {0} InvalidText: {1} Position: {2}" & Constants.vbCrLf, "ValidationError", e.InvalidText, item)

Private textBox1.Text = textBox1.Text & eventlogmessage

Me.errorProvider1.SetError(CType(sender, Control), eventlogmessage)

{% endhighlight %}

{% endtabs %}

![Error validation](Overview_images/Overview_img508.png) 


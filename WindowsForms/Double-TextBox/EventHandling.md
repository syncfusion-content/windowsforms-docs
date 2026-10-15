---
layout: post
title: Event Handling in Windows Forms DoubleTextBox | Syncfusion®
description: Learn about event handling in the Syncfusion Windows Forms DoubleTextBox control, including value changes and keyboard interactions.
platform: windowsforms
control: DoubleTextBox
documentation: ug
---
# Event Handling in WinForms Double TextBox

## DoubleValueChanged Event

This [DoubleValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DoubleTextBox.html) event is handled when the double value in the text field is changed.

{% tabs %}
{% highlight c# %}  
private void doubleTextBox1_DoubleValueChanged(object sender, EventArgs e)
{
   MessageBox.Show("Double Value is changed");
}
{% endhighlight %}
{% highlight VB %} 
Private Sub doubleTextBox1_DoubleValueChanged(ByVal sender As Object, ByVal e As EventArgs)
MessageBox.Show("Double Value is changed")
End Sub
{% endhighlight %}
{% endtabs %}

## Incrementing and decrementing using shortcut keys

There may be situations where you need to increment or decrement the value in the WinForms Double TextBox. In such cases, it is convenient to use the Up and Down keys. The minus sign (`-`) cannot be used because it is reserved for entering negative values.

The following implementation shows how to achieve this.

{% tabs %}
{% highlight c# %}
private void doubleTextBox1_KeyDown(object sender, KeyEventArgs e)
{
    decimal v = this.doubleTextBox1.DoubleValue;
    switch (e.KeyCode)
    {
        // Up and Down keys are used for incrementing and decrementing respectively.
        case Keys.Up: v++; break;
        case Keys.Down: v--; break;
    }
    this.doubleTextBox1.DoubleValue = v;
}
{% endhighlight %}
{% highlight VB %}
Private Sub doubleTextBox1_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
    Dim v As Decimal = Me.doubleTextBox1.DoubleValue
    Select Case e.KeyCode
        ' Up and Down keys are used for incrementing and decrementing respectively.
        Case Keys.Up
            v = v + 1
        Case Keys.Down
            v = v - 1
    End Select
    Me.doubleTextBox1.DoubleValue = v
End Sub
{% endhighlight %}
{% endtabs %}

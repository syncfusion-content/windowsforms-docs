---
layout: post
title: Key Settings in Windows Forms IntegerTextBox | Syncfusion®
description: Learn about Key Settings support in Syncfusion Windows Forms IntegerTextBox (Integertextbox) control and more details.
platform: windowsforms
control: IntegerTextBox
documentation: ug
---

# Key Settings in WinForms Integer TextBox

Sometimes there may be a need to enter large values, such as multiples of Mega, Kilo, and so on. In such situations, adding keyboard support is very useful for the user.

For example, if the user wants to enter `32000`, they just need to enter `32` and then press the **K** key. The value will change to `32000` automatically. The snippet below also requires that the handler be wired up to the control's `KeyDown` event (for example, `this.integerTextBox1.KeyDown += new System.Windows.Forms.KeyEventHandler(this.integerTextBox1_KeyDown);`).

{% tabs %}
{% highlight C# %}
private void integerTextBox1_KeyDown(object sender, KeyEventArgs e)
{
    long v = integerTextBox1.IntegerValue;
    switch (e.KeyCode)
    {
        // Enter the value as multiples of thousand.
        case Keys.G: v = v * 1000000000; break;
        case Keys.M: v = v * 1000000; break;
        case Keys.K: v = v * 1000; break;
    }
    integerTextBox1.IntegerValue = v;
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
    Dim v As Long = integerTextBox1.IntegerValue
    Select Case e.KeyCode
        ' Enter the value as multiples of thousand.
        Case Keys.G
            v = v * 1000000000
        Case Keys.M
            v = v * 1000000
        Case Keys.K
            v = v * 1000
    End Select
    integerTextBox1.IntegerValue = v
End Sub
{% endhighlight %}
{% endtabs %}

## Shortcut keys

Sometimes there is a need to increment or decrement the value in the WinForms Integer TextBox. In such situations, it is better to use shortcut keys.

The following implementation will illustrate how this can be achieved. Here we are using the **Up** and **Down** keys for incrementing and decrementing respectively. We cannot use the `-` key because it is already reserved to enter the minus sign.

{% tabs %}
{% highlight C# %}
private void integerTextBox1_KeyDown(object sender, KeyEventArgs e)
{
    long v = integerTextBox1.IntegerValue;
    switch (e.KeyCode)
    {
        // Increments and decrements values.
        case Keys.Up: v++; break;
        case Keys.Down: v--; break;
    }
    integerTextBox1.IntegerValue = v;
}
{% endhighlight %}
{% highlight VB %}
Private Sub integerTextBox1_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
    Dim v As Long = integerTextBox1.IntegerValue
    Select Case e.KeyCode
        ' Increments and decrements values.
        Case Keys.Up
            v = v + 1
        Case Keys.Down
            v = v - 1
    End Select
    integerTextBox1.IntegerValue = v
End Sub
{% endhighlight %}
{% endtabs %}

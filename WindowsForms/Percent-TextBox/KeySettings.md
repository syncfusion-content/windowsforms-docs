---
layout: post
title: Key Settings in Windows Forms Percent TextBox control | Syncfusion®
description: Learn about Key Settings support in Syncfusion® Windows Forms Percent TextBox control and more details.
platform: windowsforms
control: Editors Package
documentation: ug
---

# Key Settings in Windows Forms Percent TextBox

Sometimes there may occur some situations for entering large values, like in Mega, Kilo etc. In such situations if we add some sort of keyboard support, it will be very much useful for the users.

For example if the user wants to enter 32000, he just needs to enter 32 and then press the 'K'. The value will change to 32000 automatically. This is illustrated in the code snippet given below.

{% tabs %}
{% highlight C# %}
private void percentTextBox1_KeyDown(object sender, KeyEventArgs e)
{
    double v = percentTextBox1.PercentValue;
    switch(e.KeyCode)
    {
        // Enter the value as multiples of thousand.
        case Keys.G : v = v * 1000000000;
        break;
        
        case Keys.M : v = v * 1000000;
        break;
        
        case Keys.K : v = v * 1000;
        break;
    }   
    percentTextBox.PercentValue = v;
}
{% endhighlight %}
{% highlight VB %}
Private Sub percentTextBox1_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
Dim v As Double = percentTextBox1.PercentValue
Select e.KeyCode

' Enter the value as multiples of thousand.
Case Keys.G
v = v * 1000000000

Case Keys.M
v = v * 1000000

Case Keys.K
v = v * 1000
End Select
percentTextBox.PercentValue = v
End Sub
{% endhighlight %}
{% endtabs %}

## Shortcut keys

Sometimes there may occur some situations for incrementing or decrementing the value in the PercentTextBox. In such situations it is better to use shortcut keys.

The following implementation will illustrate how this can be achieved. Here we are using Up and Down keys for incrementing and decrementing respectively. We cannot use the '-' key because it is already reserved to enter the minus sign.

{% tabs %}
{% highlight C# %}
private void percentTextBox1_KeyDown(object sender, KeyEventArgs e)
{
    // Increments the PercentTextBoxValue.
    double v = percentTextBox1.PercentValue;
    switch(e.KeyCode)
    {
        case Keys.Up : v++;
        break;//you can change by a step like v+=10;
    
        case Keys.Down : v--;
        break;
    }
    percentTextBox1.PercentValue = v;
}
{% endhighlight %}
{% highlight VB %}
Private Sub percentTextBox1_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)

' Increments the PercentTextBoxValue.
Dim v As Double = percentTextBox1.PercentValue
Select e.KeyCode

Case Keys.Up
v = v+1

Case Keys.Down
v = v-1
End Select
percentTextBox1.PercentValue = v
End Sub
{% endhighlight %}
{% endtabs %}

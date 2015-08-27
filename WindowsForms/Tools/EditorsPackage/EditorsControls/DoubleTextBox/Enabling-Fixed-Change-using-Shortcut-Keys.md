---
layout: post
title: Enabling Fixed Change using Shortcut Keys
description: Event Handling
platform: windowsforms
control: DoubleTextBox
documentation: ug
---
# Enabling Fixed Change using Shortcut Keys

Sometimes there may occur situations for incrementing or decrementing the value in DoubleTextBox. In such situations it is better to use shortcut keys. The following implementation will give you an idea on how to achieve this. Here the Up and Down keys are used for incrementing and decrementing respectively. We cannot use '-' because it is already reserved to enter the minus sign.

{% highlight C# %}  

private void doubleTextBox1_KeyDown(object sender,KeyEventArgs e)

{

  decimal v=doubleTextBox1.DoubleValue;

switch(e.KeyCode)

{

  // Up and Down keys are used for incrementing and decrementing respectively.

case Keys.Up : v++;break;

case Keys.Down : v--;break;

}

doubleTextBox1.DoubleValue=v;

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub doubleTextBox1_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)

Dim v As Decimal = doubleTextBox1.DoubleValue

Select e.KeyCode


' Up and Down keys are used for incrementing and decrementing respectively.

Case Keys.Up

v=v+1

Case Keys.Down

v=v-1

End Select

doubleTextBox1.DoubleValue = v

End Sub

{% endhighlight %}
---
layout: post
title: Key-Support | Windows Forms | Syncfusion
description: key support
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Key Support

Sometimes there may occur some situations for entering large values, like in Mega, Kilo etc. In such situations if you add some sort of keyboard support, it will be very much useful for the you.

For example if you want to enter 22000, you just need to enter 22 and then press 'K'. The value will change to 22000 automatically. This is illustrated in the code snippet given below.



{% highlight c# %}



private void numericUpDownExt1_KeyDown(object sender, KeyEventArgs e)

{

decimal v = integerTextBox1.Value;

switch(e.KeyCode)

{

// Entering the value as multiples of thousand.

case Keys.G : v = v * 1000000000;

break;

case Keys.M : v = v * 1000000;

break;

case Keys.K : v = v * 1000;

break;

}

integerTextBox.Value = v;

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub numericUpDownExt1_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)

Dim v As Decimal = numericUpDownExt1.Value

Select e.KeyCode

' Entering the value as multiples of thousand.

Case Keys.G

v = v * 1000000000

Case Keys.M

v = v * 1000000

Case Keys.K

v = v * 1000

End Select

numericUpDownExt1.Value = v

End Sub


{% endhighlight %}

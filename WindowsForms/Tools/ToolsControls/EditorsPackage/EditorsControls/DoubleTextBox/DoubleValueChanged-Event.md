---
layout: post
title: DoubleValueChanged Event
description: Event Handling
platform: windowsforms
control: DoubleTextBox
documentation: ug
---
# DoubleValueChanged Event

This event is handled when the double value in the text field is changed.

{% highlight C# %}  

private void doubleTextBox1_DoubleValueChanged(object sender, EventArgs e)

{

   MessageBox.Show("Double Value is changed");

}

{% endhighlight %}




{% highlight vbnet %} 

Private Sub doubleTextBox1_DoubleValueChanged(ByVal sender As Object, ByVal e As EventArgs)

MessageBox.Show("Double Value is changed")

End Sub

{% endhighlight %}
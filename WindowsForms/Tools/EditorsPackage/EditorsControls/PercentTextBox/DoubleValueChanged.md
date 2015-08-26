---
layout: post
title: DoubleValueChanged
description: DoubleValueChanged
platform: windowsforms
control: Editors Package
documentation: ug
---

# DoubleValueChanged

This event occurs when the DoubleValue property is changed. The DoubleValue property specifies the double value of the PercentTextBox control.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}




private void percentTextBox1_FormattedTextChanged(object sender, EventArgs e)

{

Console.WriteLine(" DoubleValueChanged event is raised ");

}
{% endhighlight %}


{% highlight vbnet %}


Private Sub percentTextBox1_FormattedTextChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" DoubleValueChanged event is raised ")

End Sub
{% endhighlight %}
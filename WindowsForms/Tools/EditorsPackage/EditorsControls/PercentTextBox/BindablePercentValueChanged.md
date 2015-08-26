---
layout: post
title: BindablePercentValueChanged
description: BindablePercentValueChanged
platform: windowsforms
control: Editors Package
documentation: ug
---


# BindablePercentValueChanged

This event occurs when the BindablePercentValue property is changed. The BindablePercentValue property is a wrapper property that indicates the percent value. This property can be used to set the value of the control to 'Null'.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}


private void percentTextBox1_BindablePercentValueChanged(object sender, EventArgs e)

{

Console.WriteLine(" BindablePercentValueChanged event is raised ");

}
{% endhighlight %}


{% highlight vbnet %}





Private Sub percentTextBox1_BindablePercentValueChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BindablePercentValueChanged event is raised ")

End Sub
{% endhighlight %}
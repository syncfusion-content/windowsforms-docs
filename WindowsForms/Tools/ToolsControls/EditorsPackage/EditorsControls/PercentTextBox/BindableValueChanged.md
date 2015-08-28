---
layout: post
title: BindableValueChanged 
description: BindableValueChanged 
platform: windowsforms
control: Editors Package
documentation: ug
---

#  BindableValueChanged 

This event occurs when the BindableValue property is changed. The BindableValue property is a wrapper property that indicates the value. This property can be used to set the value of the control to 'Null'.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}



private void percentTextBox1_BindableValueChanged(object sender, EventArgs e)

{

Console.WriteLine(" BindableValueChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %}


Private Sub percentTextBox1_BindableValueChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BindableValueChanged event is raised ")

End Sub
{% endhighlight %}

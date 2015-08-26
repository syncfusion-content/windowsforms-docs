---
layout: post
title: BorderStyleChanged 
description: BorderStyleChanged 
platform: windowsforms
control: Editors Package
documentation: ug
---


# BorderStyleChanged 

This event occurs when the BorderStyle property is changed. The BorderStyle property indicates whether the edit control should have a border.

The event handler receives an argument of type EventArgs containing data related to this event.




{% highlight C# %}

private void percentTextBox1_BorderStyleChanged(object sender, EventArgs e)

{

Console.WriteLine(" BorderStyleChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %}



Private Sub percentTextBox1_BorderStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BorderStyleChanged event is raised ")

End Sub
{% endhighlight %}
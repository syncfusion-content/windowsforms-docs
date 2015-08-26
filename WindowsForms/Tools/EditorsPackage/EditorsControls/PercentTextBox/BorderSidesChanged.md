---
layout: post
title: BorderSidesChanged
description: BorderSidesChanged
platform: windowsforms
control: Editors Package
documentation: ug
---


# BorderSidesChanged 

This event occurs when the BorderSides property is changed. The BorderSides property indicates the border sides of the panel.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}


private void percentTextBox1_BorderSidesChanged(object sender, EventArgs e)

{

Console.WriteLine(" BorderSidesChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %}



Private Sub percentTextBox1_BorderSidesChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BorderSidesChanged event is raised ")

End Sub
{% endhighlight %}
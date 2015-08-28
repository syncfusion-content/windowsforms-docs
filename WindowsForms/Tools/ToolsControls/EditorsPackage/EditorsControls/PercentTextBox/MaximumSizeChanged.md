---
layout: post
title: MaximumSizeChanged 
description: MaximumSizeChanged 
platform: windowsforms
control: Editors Package
documentation: ug
---

# MaximumSizeChanged 

This event occurs when the MaximumSize property is changed. The MaximumSize property gets / sets the maximum size of the control.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}




private void percentTextBox1_MaximumSizeChanged(object sender, EventArgs e)

{

Console.WriteLine(" MaximumSizeChanged event is raised ");

}


{% endhighlight %}

{% highlight vbnet %}



Private Sub percentTextBox1_MaximumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" MaximumSizeChanged event is raised ")

End Sub
{% endhighlight %}
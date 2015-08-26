---
layout: post
title: MultilineChanged 
description: MultilineChanged 
platform: windowsforms
control: Editors Package
documentation: ug
---


# MultilineChanged 

This event occurs when the Multiline property is changed. The Multiline property controls whether the text of the edit control can span more than one line.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}




private void percentTextBox1_MultilineChanged(object sender, EventArgs e)

{

Console.WriteLine(" MultilineChanged event is raised ");

}
{% endhighlight %}




{% highlight vbnet %}



Private Sub percentTextBox1_MultilineChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" MultilineChanged event is raised ")

End Sub
{% endhighlight %}

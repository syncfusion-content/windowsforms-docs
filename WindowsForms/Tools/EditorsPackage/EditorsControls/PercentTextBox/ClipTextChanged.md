---
layout: post
title: ClipTextChanged 
description: ClipTextChanged 
platform: windowsforms
control: Editors Package
documentation: ug
---


# ClipTextChanged 

This event occurs when the ClipText property is changed. The ClipText property returns the clipped text without the formatting.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}


private void percentTextBox1_ClipTextChanged(object sender, EventArgs e)

{

Console.WriteLine(" ClipTextChanged event is raised ");

}
{% endhighlight %}





{% highlight vbnet %}



Private Sub percentTextBox1_ClipTextChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ClipTextChanged event is raised ")

End Sub
{% endhighlight %}
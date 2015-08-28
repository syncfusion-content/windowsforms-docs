---
layout: post
title: TextAlignChanged
description: TextAlignChanged
platform: windowsforms
control: Editors Package
documentation: ug
---

# TextAlignChanged 

This event occurs when the TextAlign property is changed. The TextAlign property indicates how the text should be aligned for edit controls.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}



private void percentTextBox1_TextAlignChanged(object sender, EventArgs e)

{

Console.WriteLine(" TextAlignChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %}



Private Sub percentTextBox1_TextAlignChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" TextAlignChanged event is raised ")

End Sub
{% endhighlight %}
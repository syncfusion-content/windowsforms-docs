---
layout: post
title: ReadOnlyChanged
description: readonlychanged
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# ReadOnlyChanged

This event occurs when the ReadOnly property is changed. The ReadOnly property gets / sets a value indicating whether the text can be changed by the use of the up or down buttons only.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}



private void numericUpDownExt1_ReadOnlyChanged(object sender, EventArgs e)

{

Console.WriteLine(" ReadOnlyChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub numericUpDownExt1_ReadOnlyChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ReadOnlyChanged event is raised ")

End Sub


{% endhighlight %}

---
layout: post
title: RightToLeftChanged 
description: RightToLeftChanged 
platform: windowsforms
control: Editors Package
documentation: ug
---

# RightToLeftChanged 

This event occurs when the RightToLeft property is changed. The RightToLeft property indicates whether the components should be drawn right-to-left for RTL languages.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}


private void percentTextBox1_RightToLeftChanged(object sender, EventArgs e)

{

Console.WriteLine(" RightToLeftChanged event is raised ");

}
{% endhighlight %}




{% highlight vbnet %}


Private Sub percentTextBox1_RightToLeftChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" RightToLeftChanged event is raised ")

End Sub
{% endhighlight %}
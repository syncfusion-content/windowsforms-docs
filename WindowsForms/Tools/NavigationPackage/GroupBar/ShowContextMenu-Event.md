---
layout: post
title: ShowContextMenu Event
description: ShowContextMenu Event
platform: windowsforms
control: Navigation Package
documentation: ug
---
## ShowContextMenu Event

It occurs on right-clicking the mouse button over the GroupBar control. It is handled when the mouse is right-clicked over the GroupBar control at runtime.

The event handler receives an argument of type EventArgs.

{% highlight C# %}  

private void groupBar1_ShowContextMenu(object sender, EventArgs e)

{

  // You can see the below line in the output window during run-time.

Console.Write(" ShowContextMenu Event is raised ");

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub groupBar1_ShowContextMenu(ByVal sender As Object, ByVal e As EventArgs)

  // You can see the below line in the output window during run-time.

Console.Write(" ShowContextMenu Event is raised ")

End Sub

{% endhighlight %}
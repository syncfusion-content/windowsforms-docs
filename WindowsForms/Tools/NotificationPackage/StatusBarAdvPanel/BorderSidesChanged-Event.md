---
layout: post
title: BorderSidesChanged-Event
description: bordersideschanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# BorderSidesChanged Event

This event is fired, when the value of the BorderSides property is changed. The BorderSides property indicates the border sides of the panel.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



// Draw border sides for the StatusBarAdvPanel control using the BorderSides property.

this.statusBarAdv1Panel.BorderSides = System.Windows.Forms.Border3DSide.Top;



// Handle the BorderSidesChanged event.

this.statusBarAdvPanel1.BorderSidesChanged+=new EventHandler(statusBarAdvPanel1_BorderSidesChanged);



private void statusBarAdvPanel1_BorderSidesChanged(object sender, EventArgs e)

{

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" BorderSidesChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



'Draw border sides for the StatusBarAdvPanel control using the BorderSides property. 

Me.statusBarAdv1Panel.BorderSides = System.Windows.Forms.Border3DSide.Top 



'Handle the BorderSidesChanged event. 

AddHandler Me.statusBarAdvPanel1.BorderSidesChanged, AddressOf statusBarAdvPanel1_BorderSidesChanged 



Private Sub statusBarAdvPanel1_BorderSidesChanged(ByVal sender As Object, ByVal e As EventArgs)

' The below line will be displayed in the output window at runtime. 

    Console.WriteLine(" BorderSidesChanged event is raised ")

End Sub

{% endhighlight %}


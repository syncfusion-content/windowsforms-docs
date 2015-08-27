---
layout: post
title: BorderSingleChanged-Event
description: bordersinglechanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# BorderSingleChanged Event

This event is fired when the value of the BorderSingle property is changed. The BorderSingle property indicates the 2D border style.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



// Set the new 2D border style for the StatusBarAdvPanel control using the BorderStyle property.

this.statusBarAdvPanel1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted;

// Set the BorderStyle property to 'FixedSingle' to view the 2D border style. 

this.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;



// Handle the BorderSingleChanged event.

this.statusBarAdvPanel1.BorderSingleChanged+=new EventHandler(statusBarAdvPanel1_BorderSingleChanged);



private void statusBarAdvPanel1_BorderSingleChanged(object sender, EventArgs e)

{

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" BorderSingleChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Set the new 2D border style for the StatusBarAdvPanel control using the BorderStyle property. 

Me.statusBarAdvPanel1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted 

' Set the BorderStyle property to 'FixedSingle' to view the 2D border style. 

Me.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 



' Handle the BorderSingleChanged event. 

AddHandler Me.statusBarAdvPanel1.BorderSingleChanged, AddressOf statusBarAdvPanel1_BorderSingleChanged 



Private Sub statusBarAdvPanel1_BorderSingleChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' The below line will be displayed in the output window at runtime. 

    Console.WriteLine(" BorderSingleChanged event is raised ")

End Sub

{% endhighlight %}


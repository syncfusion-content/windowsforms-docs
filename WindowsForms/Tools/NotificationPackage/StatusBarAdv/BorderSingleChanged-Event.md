---
layout: post
title: BorderSingleChanged-Event
description: bordersinglechanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# BorderSingleChanged Event

This event is handled, when the value of the BorderSingle property is changed. The BorderSingle property indicates the 2D border style.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



// Set the BorderStyle property to 'FixedSingle' to view the 2D border style. 

this.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

// Set the new 2D border style for the StatusBarAdv control using the BorderStyle property.

this.statusBarAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted;



// Handle the BorderSingleChanged event.

this.statusBarAdv1.BorderSingleChanged+=new EventHandler(statusBarAdv1_BorderSingleChanged);



private void statusBarAdv1_BorderSingleChanged(object sender, EventArgs e)

{

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" BorderSingleChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Set the BorderStyle property to 'FixedSingle' to view the 2D border style. 

Me.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

' Set the new 2D border style for the StatusBarAdv control using the BorderStyle property. 

Me.statusBarAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted 



' Handle the BorderSingleChanged event. 

AddHandler Me.statusBarAdv1.BorderSingleChanged, AddressOf statusBarAdv1_BorderSingleChanged 



Private Sub statusBarAdv1_BorderSingleChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' The below line will be displayed in the output window at runtime. 

    Console.WriteLine(" BorderSingleChanged event is raised ")

End Sub

{% endhighlight %}


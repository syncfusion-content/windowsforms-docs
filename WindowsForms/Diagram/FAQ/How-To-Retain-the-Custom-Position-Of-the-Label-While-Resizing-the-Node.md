---
layout: post
title: How to retain a label position in WinForms Diagram | Syncfusion®
description: Learn how to retain a label's custom position while resizing a node in the Syncfusion® Windows Forms Diagram control using the SizeChanged event.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to retain label position while resizing node in WinForms Diagram

We can retain the label's offset value using the SizeChanged event. While resizing a node, the SizeEvent gets fired. Using this event we can retain the label's position.

{% tabs %}

{% highlight c# %}

// Adding Event Handler 

((DocumentEventSink)diagram1.Model.EventSink).SizeChanged += new SizeChangedEventHandler(Form1_SizeChanged); 

outerRect.Labels.Add(new Syncfusion.Windows.Forms.Diagram.Label()); 

outerRect.Labels[0].Text = "Rectangle"; 

outerRect.Labels[0].Position = Position.Custom; 

outerRect.Labels[0].OffsetX = outerRect.Size.Width / 2; 

outerRect.Labels[0].OffsetY = outerRect.Size.Height;  

// Resizing  

void Form1_SizeChanged(SizeChangedEventArgs evtArgs) 

{ 

outerRect.Labels[0].OffsetX = outerRect.Size.Width / 2; 

outerRect.Labels[0].OffsetY = outerRect.Size.Height;  

} 

{% endhighlight %}

{% highlight vbnet %}

' Adding Event Handler 

AddHandler (CType(diagram1.Model.EventSink, DocumentEventSink)).SizeChanged, AddressOf Form1_SizeChanged 

outerRect.Labels.Add(New Syncfusion.Windows.Forms.Diagram.Label()) 

outerRect.Labels(0).Text = "Rectangle" 

outerRect.Labels(0).Position = Position.Custom 

outerRect.Labels(0).OffsetX = outerRect.Size.Width / 2 

outerRect.Labels(0).OffsetY = outerRect.Size.Height 

' Resizing  

Private Sub Form1_SizeChanged(ByVal evtArgs As Syncfusion.Windows.Forms.Diagram.SizeChangedEventArgs)

outerRect.Labels(0).OffsetX = outerRect.Size.Width / 2

outerRect.Labels(0).OffsetY = outerRect.Size.Height

End Sub

{% endhighlight %}

{% endtabs %}
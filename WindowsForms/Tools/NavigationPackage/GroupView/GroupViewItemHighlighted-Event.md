---
layout: post
title: GroupViewItemHighlighted Event
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---

## GroupViewItemHighlighted Event

It occurs when a GroupView Item in the GroupView control is highlighted.

The event handler receives an argument of type EventArgs.

{% highlight C# %}  

//Handle the GroupViewItemHighlighted event.

this.groupView1.GroupViewItemHighlighted+=new EventHandler(groupView1_GroupViewItemHighlighted);



private void groupView1_GroupViewItemHighlighted(object sender, EventArgs e)

{

this.groupView1.HighlightText = true;

this.groupView1.HighlightItemColor = System.Drawing.Color.AliceBlue;

}

{% endhighlight %}



{% highlight vbnet %} 

'Handle the GroupViewItemHighlighted event. 

AddHandler Me.groupView1.GroupViewItemHighlighted, AddressOf groupView1_GroupViewItemHighlighted 



Private Sub groupView1_GroupViewItemHighlighted(ByVal sender As Object, ByVal e As EventArgs)

    Me.groupView1.HighlightText = True

    Me.groupView1.HighlightItemColor = System.Drawing.Color.AliceBlue

End Sub

{% endhighlight %}

![](Overview_images/Overview_img88.jpeg) 
Figure 990: GroupViewItemHighlighted Event Illustrated 


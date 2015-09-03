---
layout: post
title: How do I paint the GroupBarItem image without scaling the image
description: Frequently Asked Questions
platform: WindowsForms
control: GroupBar
documentation: ug
---
# How do I paint the GroupBarItem image without scaling the image?

You can draw the image of GroupBarItem (without scaling it), by overriding the DrawGroupBarImage method of the GroupBar. 

{% highlight C# %}  

// For this callback to occur LargeImageMode must be set to true.
 this.groupBarItem1.LargeImageMode = true;

protected override void DrawGroupBarImage(Graphics gph, int nindex, Rectangle rcbar)
{
Point location = new Point(rcbar.X + 20, rcbar.Y);
gph.DrawImage(this.VisibleGroupBarItems[nindex].Image, new Rectangle(location, new Size(20, 20)));
}

{% endhighlight %}


{% highlight vbnet %} 

' For this callback to occur LargeImageMode must be set to true.

Me.groupBarItem1.LargeImageMode = True

Overrides Sub DrawGroupBarImage(Graphics gph, Integer nindex, Rectangle rcbar)

Dim location As New Point(rcbar.X + 20, rcbar.Y)

gph.DrawImage(Me.VisibleGroupBarItems(nindex).Image, New Rectangle(location, New Size(20, 20)))

End Sub

{% endhighlight %}
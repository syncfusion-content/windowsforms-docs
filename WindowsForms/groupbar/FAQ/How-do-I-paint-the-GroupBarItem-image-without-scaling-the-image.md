---
layout: post
title: How do I paint the GroupBarItem image without scaling the image | WindowsForms | Syncfusion
description: Frequently Asked Questions
platform: WindowsForms
control: GroupBar
documentation: ug
---
# How do I paint the GroupBarItem image without scaling the image?

You can draw the image of GroupBarItem (without scaling it), by overriding the DrawGroupBarImage method of the GroupBar.

{% tabs %}

{% highlight C# %}  

// For this callback to occur LargeImageMode must be set to true.
 this.groupBarItem1.LargeImageMode = true;

protected override void DrawGroupBarImage(Graphics g, int index, Rectangle bar)
{
Point location = new Point(bar.X + 20, bar.Y);
g.DrawImage(this.VisibleGroupBarItems[index].Image, new Rectangle(location, new Size(20, 20)));
}

{% endhighlight %}


{% highlight VB %}

' For this callback to occur LargeImageMode must be set to true.

Me.groupBarItem1.LargeImageMode = True

Overrides Sub DrawGroupBarImage(Graphics g, Integer index, Rectangle bar)

Dim location As New Point(bar.X + 20, bar.Y)

g.DrawImage(Me.VisibleGroupBarItems(index).Image, New Rectangle(location, New Size(20, 20)))

End Sub

{% endhighlight %}

{% endtabs %}
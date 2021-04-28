---
layout: post
title: How do I paint the GroupBarItem image without scaling the image in Windows Forms Navigation Pane control | Syncfusion
description: Learn about How do I paint the GroupBarItem image without scaling the image support in Syncfusion Windows Forms Navigation Pane (GroupBar) control and more details.
platform: WindowsForms
control: GroupBar
documentation: ug
---
# How do I paint the GroupBarItem image without scaling the image in Windows Forms Navigation Pane (GroupBar)

You can draw the image of GroupBarItem (without scaling it), by overriding the [DrawGroupBarImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_DrawGroupBarImage_System_Drawing_Graphics_System_Int32_System_Drawing_Rectangle_) method of the GroupBar.

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

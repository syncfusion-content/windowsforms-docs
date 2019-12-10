---
layout: post
title: HubTile events | WindowsForms | Syncfusion
description: What are the Events available in HubTile and purpose of the Events
platform: WindowsForms
control: HubTile
documentation: ug
---

# What are the events available in HubTile and purpose of the events?

The Events available in HubTile are as follows,

* [BeforeTransition Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~BeforeTransition_EV.html)
* [TransitionCompleted Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~TransitionCompleted_EV.html)
* [SelectionMarked Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~SelectionMarked_EV.html)
* [ZoomCompleted Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~ZoomCompleted_EV.html)
* [TextChanged Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~TextChanged_EV.html)

## BeforeTransition event

This [BeforeTransition Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~BeforeTransition_EV.html) is triggered before the Image and Rotation Transition occur in HubTile.

### Event data

[BeforeTransitionEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.BeforeTransitionEventArgs.html) contain the members that provide information specific to this Event.

{% tabs %}
{% highlight C# %}  
private void HubTile1_BeforeTransition(object sender, BeforeTransitionEventArgs e)
{
    e.ImageIndex = 1;
    e.SlideTransition = TransitionDirection.TopToBottom;
    e.TileType = HubTileType.DefaultTile;
    e.RotateTransition = TileFlipDirection.Horizontal;
}
{% endhighlight %}
{% highlight VB %} 
Private Sub HubTile1_BeforeTransition(sender As System.Object, e As BeforeTransitionEventArgs) Handles HubTile1.BeforeTransition
    e.ImageIndex = 1
    e.RotateTransition = TileFlipDirection.Horizontal
    e.SlideTransition = TransitionDirection.BottomToTop
    e.TileType = HubTileType.PulsingTile
End Sub
{% endhighlight %}
{% endtabs %}

## TransitionCompleted event

This [TransitionCompleted Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~TransitionCompleted_EV.html) is triggered after the image Transition and Rotation Transition are completed in HubTile.

### Event data

[TransitionCompletedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TransitionCompletedEventArgs.html) contain the members that provide information specific to this Event.

{% tabs %}
{% highlight C# %}  
private void HubTile1_TransitionCompleted (object sender, TransitionCompletedEventArgs e)
{
    e.ImageIndex = 1;
    e.SlideTransition = TransitionDirection.TopToBottom;
    e.TileType = HubTileType.DefaultTile;
    e.RotateTransition = TileFlipDirection.Horizontal;
}
{% endhighlight %}
{% highlight VB %} 
Private Sub HubTile1_TransitionCompleted(sender As System.Object, e As TransitionCompletedEventArgs) Handles HubTile1.TransitionComplete      e.ImageIndex = 1
    e.SlideTransition = TransitionDirection.TopToBottom
    e.TileType = HubTileType.DefaultTile
    e.RotateTransition = TileFlipDirection.Horizontal
End Sub
{% endhighlight %}
{% endtabs %}

## SelectionMarked event

This [SelectionMarked Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~SelectionMarked_EV.html) is triggered once the HubTile is Selection marked.

### Event data

The event handler of this event receives an argument of type [SelectionMarkedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.SelectionMarkedEventArgs.html).

{% tabs %}
{% highlight C# %}  
private void HubTile1_HubTileSelectionMarked(object sender, SelectionMarkedEventArgs e)
{
    bool isSelectionMarked = e.IsSelected;
}
{% endhighlight %}
{% highlight VB %} 
Private Sub HubTile1_SelectionMarked(sender As System.Object, e As SelectionMarkedEventArgs) Handles HubTile1.SelectionMarked
  Dim isSelectionMarked As Boolean = e.IsSelected
End Sub
{% endhighlight %}
{% endtabs %}

## ZoomCompleted event

This [ZoomCompleted Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~ZoomCompleted_EV.html) is triggered after the HubTile image content is Zoomed In and Out.

### Event data

The event handler of this event receives an argument of type [ZoomCompletedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ZoomCompletedEventArgs.html).
	
{% tabs %}
{% highlight C# %}  
private void HubTile1_ZoomCompleted(object sender, ZoomCompletedEventArgs e)
{
    e.PulseDuration = 1;
    e.PulseScale = 3;
}
{% endhighlight %}
{% highlight VB %} 
Private Sub HubTile1_ZoomCompleted(sender As System.Object, e As ZoomCompletedEventArgs) Handles HubTile1.ZoomCompleted
    e.PulseDuration = 1
    e.PulseScale = 3
End Sub
{% endhighlight %}
{% endtabs %}

#### TextChanged event

This [TextChanged Event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~TextChanged_EV.html) raises when HubTile Title, Body, Footer, Banner Text are changed.

{% tabs %}
{% highlight C# %}  
private void  HubTile1_TextChanged(object sender, EventArgs e)
{
    string TitleText = this.HubTile.Title.Text;
}
{% endhighlight %}
{% highlight VB %} 
Private Sub HubTile1_TextChanged(sender As System.Object, e As System.EventArgs) Handles HubTile1.TextChanged
    Dim TitleText As String = Me.HubTile1.Title.Text
End Sub
{% endhighlight %}
{% endtabs %}
---
layout: post
title: Frequently Asked Questions
description: Frequently Asked Questions
platform: WindowsForms
control: HubTile
documentation: ug
---

# What are the Events available in HubTile and purpose of the Events?

The Events available in HubTile are as follows,

*BeforeTransition Event

*TransitionCompleted Event

*SelectionMarked Event

*ZoomCompleted Event

*TextChanged Event

#### BeforeTransition Event

This Event is triggered before the Image and Rotation Transition occur in HubTile.

#### Event Data

BeforeTransitionEventArgs contain the following members that provide information specific to this Event.

_Table 977: Members Table_

<Table>
<tr>
<th>Members</th>
<th>Description</th>
</tr>
<tr>
<td>ImageIndex</td>
<td>This property returns the HubTile image index that is Slided.</td>
</tr>
<tr>
<td>TileType</td>
<td>This property returns the HubTile Tile type.</td>
</tr>
<tr>
<td>Cancel</td>
<td>This property enables you to avoid particular image Slide Transition.</td>
</tr>
<tr>
<td>RotateTransition</td>
<td>
This property returns the Rotate transition direction of the HubTile.</td>
</tr>
<tr>
<td>SlideTransition</td>
<td>This property returns the image transition direction of HubTile.</td>
</tr>
</Table>



{% highlight C# %}  

    private void HubTile1_BeforeTransition(object sender, BeforeTransitionEventArgs e)

        {

            e.ImageIndex = 1;

            e.SlideTransition = TransitionDirection.ToptoBottom;

            e.TileType = HubTileType.DefaultTile;

            e.RotateTransition = TileFlipDirection.Horizontal;

        }

 
{% endhighlight %}


{% highlight vbnet %} 

Private Sub HubTile1_BeforeTransition(sender As System.Object, e As BeforeTransitionEventArgs) Handles HubTile1.BeforeTransition

        e.ImageIndex = 1

        e.RotateTransition = TileFlipDirection.Horizontal

        e.SlideTransition = TransitionDirection.BottomToTop

        e.TileType = HubTileType.PulsingTile

End Sub

{% endhighlight %}


#### TransitionCompleted Event

This Event is triggered after the image Transition and Rotation Transition are completed in HubTile.

#### Event Data

TransitionCompletedEventArgs contain the following members that provide information specific to this Event.

_Table 978: Members Table_

<Table>
<tr>
<th>Members</th>
<th>Description</th>
</tr>
<tr>
<td>ImageIndex</td>
<td>This property returns the HubTile image index that is Slided.</td>
</tr>
<tr>
<td>TileType</td>
<td>This property returns the HubTile Tile type.</td>
</tr>
<tr>
<td>RotateTransition</td>
<td>This property returns the Rotate transition Orientation of the HubTile.</td>
</tr>
<tr>
<td>SlideTransition</td>
<td>This property returns the image transition direction of HubTile.</td>
</tr>
</Table>



{% highlight C# %}  

   private void HubTile1_TransitionCompleted (object sender, TransitionCompletedEventArgs e)

   {

       e.ImageIndex = 1;

e.SlideTransition = TransitionDirection.ToptoBottom;

e.TileType = HubTileType.DefaultTile;

e.RotateTransition = TileFlipDirection.Horizontal;

   }

 {% endhighlight %}

{% highlight vbnet %} 

Private Sub HubTile1_TransitionCompleted(sender As System.Object, e As TransitionCompletedEventArgs) Handles HubTile1.TransitionCompleted

            e.ImageIndex = 1

            e.SlideTransition = TransitionDirection.ToptoBottom

            e.TileType = HubTileType.DefaultTile

            e.RotateTransition = TileFlipDirection.Horizontal

    End Sub
	
{% endhighlight %}


#### SelectionMarked Event

This Event is triggered once the HubTile is Selection marked.

#### Event Data

SelectionMarker contains the following members that provide information specific to this Event.

_Table 979: Members Table_


<Table>
<tr>
<th>Members</th>
<th>Description</th>
</tr>
<tr>
<td>IsSelected</td>
<td>This returns whether HubTile is selection marked or not.</td>
</tr>
</Table>

	

{% highlight C# %}  

private void HubTile1_HubTileSelectionMarked(object sender, SelectionMarkedEventArgs e)

{

    bool isSelectionMarked = e.IsSelected;

}

 {% endhighlight %}

{% highlight vbnet %} 

Private Sub HubTile1_SelectionMarked(sender As System.Object, e As SelectionMarkedEventArgs) Handles HubTile1.SelectionMarked

       

  Dim isSelectionMarked As Boolean = e.IsSelected

 

End Sub

 {% endhighlight %}

#### ZoomCompleted Event

This Event is triggered after the HubTile image content is Zoomed In and Out.

#### Event Data

ZoomCompleted contains the following members that provide information specific to this Event:

_Table 980: Members Table_


<Table>
<tr>
<th>Members</th>
<th>Description</th>
</tr>
<tr>
<td>PulseScale</td>
<td>This returns the HubTile Pulse scale.</td>
</tr>
<tr>
<td>PulseDuration</td>
<td>This returns the HubTile  PulseDuration.</td>
</tr>
</Table> 
	
 

{% highlight C# %}  

     private void HubTile1_ZoomCompleted(object sender, ZoomCompletedEventArgs e)

        {

            e.PulseDuration = 1;

            e.PulseScale = 3;

        }

 {% endhighlight %}

{% highlight vbnet %} 

 

Private Sub HubTile1_ZoomCompleted(sender As System.Object, e As ZoomCompletedEventArgs) Handles HubTile1.ZoomCompleted

            e.PulseDuration = 1

            e.PulseScale = 3

End Sub

{% endhighlight %}

#### TextChanged Event

This Event raises when HubTile Title, Body, Footer, Banner Text are changed.

{% highlight C# %}  

 

private void  HubTile1_TextChanged(object sender, EventArgs e)

{

      string TitleText = this.HubTile.Title.Text;

}

 {% endhighlight %}

{% highlight vbnet %} 

 

Private Sub HubTile1_TextChanged(sender As System.Object, e As System.EventArgs) Handles HubTile1.TextChanged

 

     Dim TitleText As String = Me.HubTile1.Title.Text

 

 End Sub
 
{% endhighlight %}
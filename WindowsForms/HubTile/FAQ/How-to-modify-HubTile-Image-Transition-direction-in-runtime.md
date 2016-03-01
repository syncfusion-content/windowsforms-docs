---
layout: post
title: How to modify HubTile Image Transition direction in runtime | Windows Forms | Syncfusion
description: How to modify HubTile Image Transition direction in runtime
platform: windowsforms
control: HubTile
documentation: ug
--- 


# How to modify HubTile Image Transition direction in runtime?

You can set HubTile SlideTransition property to achieve this.



<Table>
<tr>
<th>Property</th>
<th>Description</th>
</tr>
<tr>
<td>SlideTransition</td>
<td>This property sets HubTile image transition direction.</td>
</tr>
</Table>


{% highlight C# %} 

 

/// Sets Image transition direction as RightToLeft

this.HubTile1.SlideTransition = TransitionDirection.RightToLeft;

 

/// Sets Image transition direction as LeftToRight

this.HubTile1.SlideTransition = TransitionDirection.LeftToRight;

 

/// Sets Image transition direction as TopToBottom

this.HubTile1.SlideTransition = TransitionDirection.ToptoBottom;

 

/// Sets Image transition direction as BottomToTop

this.HubTile1.SlideTransition= TransitionDirection.BottomToTop;

  {% endhighlight %}


{% highlight vbnet %} 

 

‘Sets Image transition direction as RightToLeft

Me.HubTile1.SlideTransition = TransitionDirection.RightToLeft

 

‘Sets Image transition direction as LeftToRight

Me.HubTile1.SlideTransition = TransitionDirection.LeftToRight

 

‘Sets Image transition direction as TopToBottom

Me.HubTile1.SlideTransition = TransitionDirection.ToptoBottom

 

‘Sets Image transition direction as BottomToTop

Me.HubTile1.SlideTransition= TransitionDirection.BottomToTop

 {% endhighlight %}
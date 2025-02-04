---
layout: post
title: How-to-modify-HubTile-Image-Transition-direction-i | WindowsForms | Syncfusion®
description:  how to modify hubtile image transition direction in runtime?
platform: wpf
control: TabbedMDIPackage
documentation: ug
---

#  How to modify HubTile Image Transition direction in runtime?

You can set HubTileSlideTransition property to achieve this.

Property table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
SlideTransition </td><td>
This property sets HubTile image transition direction.</td></tr>
</table>

{% tabs %}

{% highlight C# %}



/// Sets Image transition direction as RightToLeft

this.HubTile1.SlideTransition = TransitionDirection.RightToLeft;



/// Sets Image transition direction as LeftToRight

this.HubTile1.SlideTransition = TransitionDirection.LeftToRight;



/// Sets Image transition direction as TopToBottom

this.HubTile1.SlideTransition = TransitionDirection.TopToBottom;



/// Sets Image transition direction as BottomToTop

this.HubTile1.SlideTransition= TransitionDirection.BottomToTop;


{% endhighlight %}


{% highlight VB %}



‘Sets Image transition direction as RightToLeft

Me.HubTile1.SlideTransition = TransitionDirection.RightToLeft



‘Sets Image transition direction as LeftToRight

Me.HubTile1.SlideTransition = TransitionDirection.LeftToRight



‘Sets Image transition direction as TopToBottom

Me.HubTile1.SlideTransition = TransitionDirection.TopToBottom



‘Sets Image transition direction as BottomToTop

Me.HubTile1.SlideTransition= TransitionDirection.BottomToTop

{% endhighlight %}

{% endtabs %}




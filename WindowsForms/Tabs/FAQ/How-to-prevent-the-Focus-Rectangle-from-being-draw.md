---
layout: post
title: How-to-prevent-the-Focus-Rectangle-from-being-draw
description: how to prevent the focus rectangle from being drawn in the tabs
platform: WindowsForms
control: TabsPackage
documentation: ug
---

# How to prevent the Focus Rectangle from being drawn in the Tabs

You can easily do this by handling the DrawItem event, adjusting the DrawTabEventArgs and delegating drawing to the default drawing logic.

{% highlight c# %}



private void TabControlExt_DrawItem(object sender, Syncfusion.Windows.Forms.Tools.DrawTabEventArgs drawItemInfo)

{

// To indicate that the tab gets drawn as if it’s not focused (without the focus rect).

drawItemInfo.State &= ~DrawItemState.Focus;



// Then forward drawing to default drawing logic.

drawItemInfo.DrawBackground();

drawItemInfo.DrawInterior();

drawItemInfo.DrawBorders();

}

{% endhighlight %}

{% highlight vbnet %}



'To indicate that the tab gets drawn as if it’s not focused (without the focus rect).

Dim & As drawItemInfo.State = ~DrawItemState.Focus



'Then forward drawing to default drawing logic.

drawItemInfo.DrawBackground()

drawItemInfo.DrawInterior()

drawItemInfo.DrawBorders()

End Sub

{% endhighlight %}



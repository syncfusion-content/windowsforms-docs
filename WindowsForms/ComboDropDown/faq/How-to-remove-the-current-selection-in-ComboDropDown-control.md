---
layout: post
title: How-to-remove-the-current-selection-in-ComboDropDown-control | WindowsForms | Syncfusion
description: how to remove the current selection in combodropdown control
platform: WindowsForms
control: Editors Package
documentation: ug
---

# How to remove the current selection in ComboDropDown control?

We can derive custom ComboDropDown control and override DrawListModeEditPortion property to remove the selection as follows.

{% highlight c# %}



public class CustomComboDropDown : ComboDropDown

{

    public CustomComboDropDown()

    {

    }



    protected override void DrawListModeEditPortion(PaintEventArgs e, Color highlightBG, Color highlightText, bool drawFocusRect)

    {



        // Set the highlightBG to Color.Transparent to draw transparent selection.

        // Set drawFocusRect to false to hide the focus rectangle.

        base.DrawListModeEditPortion(e, Color.Transparent, highlightText, false);

    }

}

{% endhighlight %}

{% highlight vbnet %}



Public Class CustomComboDropDown : Inherits ComboDropDown

    Public Sub New()

    End Sub



    Protected Overrides Sub DrawListModeEditPortion(ByVal e As PaintEventArgs, ByVal highlightBG As Color, ByVal highlightText As Color, ByVal drawFocusRect As Boolean)



        ' Set the highlightBG to Color.Transparent to draw transparent selection.

        ' Set drawFocusRect to false to hide the focus rectangle.

        MyBase.DrawListModeEditPortion(e, Color.Transparent, highlightText, False)

    End Sub

End Class

{% endhighlight %}
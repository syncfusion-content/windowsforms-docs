---
layout: post
title: How-to-customize-the-close-button-in-TabbedGroupMDIManager | WindowsForms | Syncfusion
description: how to customize the close button in tabbedgroupmdimanager
platform: WindowsForms
control: TabbedMDIPackage
documentation: ug
---

# How to customize the close button in TabbedGroupMDIManager

This can be achieved by deriving TabbedGroupMDIManager class and overriding GetCloseButtonBounds method as follows.

{% highlight c# %}



public class CustomTabbedMDI : TabbedGroupedMDIManager

{

    public CustomTabbedMDI() { }



    protected override MDITabPanel CreateMDITabPanel()

    {

        return new CustomMDITabPanel(this);

    }

}

public class CustomMDITabPanel : MDITabPanel

{

    public CustomMDITabPanel(TabbedMDIManager tm)

        : base(tm)

    { }

    protected override Rectangle GetCloseButtonBounds()

    {

        Rectangle rect = base.GetCloseButtonBounds();

        rect.Width = 20; rect.Height = 20;

        return rect;

    }

}

{% endhighlight %}

{% highlight vbnet %}



Public Class CustomTabbedMDI : Inherits TabbedGroupedMDIManager

    Public Sub New()

    End Sub



    Protected Overrides Function CreateMDITabPanel() As MDITabPanel

        Return New CustomMDITabPanel(Me)

    End Function

End Class

Public Class CustomMDITabPanel : Inherits MDITabPanel

    Public Sub New(ByVal tm As TabbedMDIManager)

        MyBase.New(tm)

    End Sub

    Protected Overrides Function GetCloseButtonBounds() As Rectangle

        Dim rect As Rectangle = MyBase.GetCloseButtonBounds()

        rect.Width = 20

        rect.Height = 20

        Return rect

    End Function

End Class

{% endhighlight %}


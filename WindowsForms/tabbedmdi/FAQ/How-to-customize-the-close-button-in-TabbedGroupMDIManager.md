---
layout: post
title: How-to-customize-the-close-button | WindowsForms | Syncfusion®
description: how to customize the close button in tabbedgroupmdimanager
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to customize the close button in TabbedGroupMDIManager

This can be achieved by deriving TabbedGroupMDIManager class and overriding [GetCloseButtonBounds](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MDITabPanel.html#Syncfusion_Windows_Forms_Tools_MDITabPanel_GetCloseButtonBounds) method as follows.

{% tabs %}

{% highlight C# %}



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

    public CustomMDITabPanel(TabbedMDIManager tabbedMDIManager)

        : base(tabbedMDIManager)

    { }

    protected override Rectangle GetCloseButtonBounds()

    {

        Rectangle rect = base.GetCloseButtonBounds();

        rect.Y = 4; rect.Width = 15; rect.Height = 15;

        return rect;

    }

}

{% endhighlight %}

{% highlight VB %}



Public Class CustomTabbedMDI : Inherits TabbedGroupedMDIManager

    Public Sub New()

    End Sub



    Protected Overrides Function CreateMDITabPanel() As MDITabPanel

        Return New CustomMDITabPanel(Me)

    End Function

End Class

Public Class CustomMDITabPanel : Inherits MDITabPanel

    Public Sub New(ByVal tabbedMDIManager As TabbedMDIManager)

        MyBase.New(tabbedMDIManager)

    End Sub

    Protected Overrides Function GetCloseButtonBounds() As Rectangle

        Dim rect As Rectangle = MyBase.GetCloseButtonBounds()

        rect.Y = 4

        rect.Width = 15

        rect.Height = 15

        Return rect

    End Function

End Class

{% endhighlight %}

{% endtabs %}

---
layout: post
title: Remove the header of XPTaskBarBox in WinForms XPTaskBar| Syncfusion®
description: How to remove the header of XPTaskBarBox in Syncfusion® WindowsForms XPTaskBar control, its elements, and more.
platform: windowsforms
control: XPTaskBar
documentation: ug
---
# How to remove the header of XPTaskBarBox in an XPTaskBar

For this, you need to derive XPTaskBarBox class, and override DetermineHeaderHeight method as follows.

{% tabs %}

{% highlight C# %} 

public class CustomTaskBar: XPTaskBarBox

{

    public CustomTaskBar()

        : base()

    {

 

    }

 

    protected override int DetermineHeaderHeight(Graphics g)

    {

        return 0; // set the height as 0 here

    }

 

}

{% endhighlight %}



{% highlight VB %}

Public Class CustomTaskBar : Inherits XPTaskBarBox

    Public Sub New()

        MyBase.New()

    End Sub

 

    Protected Overrides Function DetermineHeaderHeight(ByVal g As Graphics) As Integer

        Return 0 ' set the height as 0 here

    End Function

End Class

{% endhighlight %}

{% endtabs %}
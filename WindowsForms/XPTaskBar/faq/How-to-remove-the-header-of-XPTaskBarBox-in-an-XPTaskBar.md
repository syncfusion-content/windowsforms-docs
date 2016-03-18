---
layout: post
title: How to remove the header of XPTaskBarBox in an XPTaskBar | WindowsForms | Syncfusion
description: Frequently Asked Questions
platform: WindowsForms
control: XPTaskBar
documentation: ug
---
# How to remove the header of XPTaskBarBox in an XPTaskBar

For this, you need to derive XPTaskBarBox class, and override DetermineHeaderHeight method as follows.

{% highlight C# %} 

public class CustomTaskBarbox : XPTaskBarBox

{

    public CustomTaskBarbox()

        : base()

    {

 

    }

 

    protected override int DetermineHeaderHeight(Graphics g)

    {

        return 0; // set the height as 0 here

    }

 

}

{% endhighlight %}



 {% highlight vbnet %} 

Public Class CustomTaskBarbox : Inherits XPTaskBarBox

    Public Sub New()

        MyBase.New()

    End Sub

 

    Protected Overrides Function DetermineHeaderHeight(ByVal g As Graphics) As Integer

        Return 0 ' set the height as 0 here

    End Function

End Class

{% endhighlight %}

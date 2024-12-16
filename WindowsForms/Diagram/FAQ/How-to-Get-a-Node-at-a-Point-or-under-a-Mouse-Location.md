---
layout: post
title: How to Get a Node at a Point or under a Mouse Location | Syncfusion®
description: Learn how to use the Controller's GetNodeAtPoint method to accurately identify a diagram node at a specific point, even when panned or zoomed.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Get a Node at a Point or under a Mouse Location?

## GetNodeAtPoint 

You can use the GetNodeAtPoint method of Controller to get a node at a point. You have to convert the point to a model coordinate before using this method in order to get the exact result when a diagram document is panned and zoomed.

{% tabs %}

{% highlight c# %}

//Client location.

Point pt = new Point(200,150);

//Covert client location to model location.

pt = diagram1.Controller.ConvertToModelCoordinates(pt);

//Get the node in model coordinates. 

Node node = diagram1.Controller.GetNodeAtPoint(pt);

{% endhighlight %}

{% highlight vbnet %}

'Client location.

Dim pt As Point = New Point(200,150)

'Covert client location to model location.

pt = diagram1.Controller.ConvertToModelCoordinates(pt)

'Get the node in model coordinates. 

Dim node As Node = diagram1.Controller.GetNodeAtPoint(pt)

{% endhighlight %}

{% endtabs %}


## GetNodeUnderMouse 

You can use the GetNodeUnderMouse method of Controller to get a node at a current mouse point. You don’t have to convert the mouse point to a model coordinate while using this method. You just need to pass the current mouse point to the model coordinate.


{% tabs %}

{% highlight c# %}

private void diagram1_MouseMove(object sender, MouseEventArgs e)

{

     //Gets the top node under the current mouse location.

     INode node = diagram1.Controller.GetNodeUnderMouse(e.Location);

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub diagram1_MouseMove(ByVal sender As Object, ByVal e As MouseEventArgs)

'Gets the top node under the current mouse location.

Dim node As INode = diagram1.Controller.GetNodeUnderMouse(e.Location)

End Sub

{% endhighlight %}

{% endtabs %}
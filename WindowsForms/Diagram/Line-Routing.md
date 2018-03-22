---
layout: post
title: Line-Routing | Windows Forms | Syncfusion
description: Line Routing
platform: windowsforms
control: Diagram
documentation: ug
---


# Line Routing

When a link is drawn between two nodes, by enabling the LineRoutingEnabled property of that link and the diagram view, and if any other node is found in between them, the line will be automatically re-routed around those nodes.


<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
LineRoutingEnabled</td><td>
Specifies whether the links must be re-routed when nodes are found in the path. Default value is false.</td></tr>
</table>


Programmatically it can be set as follows: 


{% tabs %}
{% highlight c# %}

	//enabling for model
	this.diagram1.Model.LineRoutingEnabled = true;
	
	//enabling for link object
	link.LineRoutingEnabled = true;

{% endhighlight %}
{% highlight vbnet %}

	'enabling for model
	Me.diagram1.Model.LineRoutingEnabled = True
	
	'enabling for link object
	link.LineRoutingEnabled = True

{% endhighlight %}
{% endtabs %}

N>  In the above code snippet, link refers to the instance of the Link node.
N>
N>  Only when LineRoutingEnabled property is set to true, LineRouter properties will be enabled.



### Distance and Routing mode settings

To customize the distance between the connectors and the obstacles, and the type of routing to use, the LineRouter collection property should be handled. The below properties are available for the LineRouter Collection property.



<table>
<tr>
<th>
Line Router Property</th><th>
Description</th></tr>
<tr>
<td>
DistanceToObstacle</td><td>
Specifies the distance from routing connector to the obstacle.</td></tr>
<tr>
<td>
RoutingMode</td><td>
Specifies the type of LineRouting engine routing mode to be used. The default value is 'Inactive'. The options includes,Inactive,Automatic andSemiAutomatic.</td></tr>
</table>


Programmatically it can be set as follows.


{% tabs %}
{% highlight c# %}

this.diagram1.Model.LineRouter.DistanceToObstacles = 20;
this.diagram1.Model.LineRouter.RoutingMode = RoutingMode.Automatic;

{% endhighlight %}
{% highlight vbnet %}

Me.diagram1.Model.LineRouter.DistanceToObstacles = 20
Me.diagram1.Model.LineRouter.RoutingMode = RoutingMode.Automatic

{% endhighlight %}
{% endtabs %}

The LineBridgingEnabled, LineRoutingEnabled properties can be set for the diagram, in which case it will be automatically applied to all the links added to the model. Else it can be enabled only for the required links individually.

### Node settings

When line routing is enabled make sure to set the TreatAsObstacle property of the objects to true, to avoid the links running over them. If not set for an object, then that node will not be considered as an obstacle and the link will pass over it.

Programmatically it can be set as follows: 

{% tabs %}
{% highlight c# %}

circle.TreatAsObstacle = true;

{% endhighlight %}
{% highlight vbnet %}

circle.TreatAsObstacle = True

{% endhighlight %}
{% endtabs %}

In the above code snippets, the TreatAsObstacle property is set to the circle object.

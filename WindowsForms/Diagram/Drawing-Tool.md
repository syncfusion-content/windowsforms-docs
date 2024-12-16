---
layout: post
title: Drawing Tool in Windows Forms Diagram control | Syncfusion®
description: Learn about Drawing Tool support in Syncfusion® Windows Forms Diagram control, its elements, and more details.
platform: windowsforms
control: Diagram
documentation: ug
---


# Drawing Tool in Windows Forms Diagram

Diagram control now provides a drawing tool to draw different types of connectors dynamically and connector types are listed below.

1. LineConnector
2. OrthogonalConnector
3. OrgLineConnector
4. PolylineConnector
5. Spline
6. BezierCurve

For Example, The [OrgLineConnectorTool](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.OrgLineConnectorTool.html) is used to draw the Org line connector dynamically.


{% tabs %}
{% highlight c# %}

// Activates the Org line connector tool.
diagram1.Controller.ActivateTool("OrgLineConnectorTool");

{% endhighlight %}
{% highlight vb %}

'Activates the Org line connector tool.
diagram1.Controller.ActivateTool("OrgLineConnectorTool")

{% endhighlight %}
{% endtabs %}

![Drawing of Orthogonal Connector](Connectors-or-Links_images/Connectors-or-Links_img4.png)

Please refer to the Connectors sample from Windows Forms control Panel and find navigation path for the Connector sample as link.

Sample : Windows Forms Control Panel -> Diagram -> Getting Started -> Connectors

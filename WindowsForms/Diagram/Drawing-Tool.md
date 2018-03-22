---
layout: post
title: Drawing-Tool | Windows Forms | Syncfusion
description: Drawing Tool
platform: windowsforms
control: Diagram
documentation: ug
---


# Drawing Tool

Diagram control now provides a drawing tool to draw the Org line connector dynamically during run time.

### Use Case Scenario

The OrgLineConnectorTool is used to draw the Org line connector dynamically.

The following code illustrates how to activate the Org line connector tool:


{% tabs %}
{% highlight c# %}

	// Activates the Org line connector tool.
	diagram1.Controller.ActivateTool("OrgLineConnectorTool");

{% endhighlight %}
{% highlight vbnet %}

	'Activates the Org line connector tool.
	diagram1.Controller.ActivateTool("OrgLineConnectorTool")

{% endhighlight %}
{% endtabs %}

![](Connectors-or-Links_images/Connectors-or-Links_img4.png)


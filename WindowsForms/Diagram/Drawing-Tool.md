---
layout: post
title: Drawing-Tool | Windows Forms | Syncfusion
description: Drawing Tool
platform: windowsforms
control: Diagram
documentation: ug
---


# Drawing Tool

Diagram control now provides a drawing tool to draw the [OrgLineConnector](https://help.syncfusion.com/cr/cref_files/windowsforms/diagram/Syncfusion.Diagram.Base~Syncfusion.Windows.Forms.Diagram.OrgLineConnector.html) dynamically during run time.

### Use Case Scenario

The [OrgLineConnectorTool](https://help.syncfusion.com/cr/cref_files/windowsforms/diagram/Syncfusion.Diagram.Windows~Syncfusion.Windows.Forms.Diagram.OrgLineConnectorTool.html) is used to draw the Org line connector dynamically.

The following code illustrates how to activate the [OrgLineConnector](https://help.syncfusion.com/cr/cref_files/windowsforms/diagram/Syncfusion.Diagram.Base~Syncfusion.Windows.Forms.Diagram.OrgLineConnector.html) tool:


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


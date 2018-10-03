---
layout: post
title: How to set tooltip for ButtonEdit Child buttons | WindowsForms | Syncfusion
description: How to set tooltip for ButtonEdit Child buttons
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Set Tooltip for ButtonEdit Child Buttons

 To set tooltip for a child button in a ButtonEdit control, drag and drop a ToolTip control from the toolbox. Text for tooltip is set using the extender property of the particular child button.

 ![](FAQ_images/Overview_img108.jpeg) 

We can also set the Tooltip for ButtonEdit control programmatically using its SetToolTip() method.

{% tabs %}
{%highlight c#%}

this.toolTip1.SetToolTip(this.buttonEdit1, "Click here to search");

{%endhighlight%}

{%highlight vb%}

Me.toolTip1.SetToolTip(Me.buttonEdit1, "Click here to search")

{%endhighlight%}
{% endtabs %}

 ![](FAQ_images/Overview_img109.jpeg) 

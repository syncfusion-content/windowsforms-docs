---
layout: post
title: Context-Menu | Windows Forms | Syncfusion
description: This section explains about how to use the Diagram's Context Menu items and their important key features
platform: windowsforms
control: Diagram
documentation: ug
---

# Windows Forms Context Menu

### Built-in context menu

The Essential Diagram of Windows Forms provides built-in context menu support to the Diagram.

All available tools for the Diagram control such as File options, Edit options, Action options, Layout, Connectors, and Shapes are listed in the built-in context menu. 

Use Case Scenarios

This feature enables easy access of frequently used options. 

Properties_

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Type </th><th>
Data Type </th><th>
Reference links </th></tr>
<tr>
<td>
{{'[DefaultContextMenuEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.DiagramProperties.html#Syncfusion_Windows_Forms_Diagram_DiagramProperties_DefaultContextMenuEnabled)'| markdownify }}</td><td>
Used to enable default context menu. </td><td>
NA </td><td>
Boolean  </td><td>
NA </td></tr>
</table>


Enabling Default Context Menu

You can enable the default context menu using the [_DefaultContextMenuEnabled_](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.DiagramProperties.html#Syncfusion_Windows_Forms_Diagram_DiagramProperties_DefaultContextMenuEnabled) property.

The following code illustrates how to enable the default context menu:


{% tabs %}
{% highlight c# %}

//show default context menu
diagram1.DefaultContextMenuEnabled = true;
{% endhighlight %}
{% highlight vb %}

'show default context menu
diagram1.DefaultContextMenuEnabled = True

{% endhighlight %}
{% endtabs %}

![Diagram Context-Menu](Context-Menu_images/Context-Menu_img1.png)


The following code illustrates how to disable the default context menu:

{% tabs %}
{% highlight c# %}

//hide default context menu
diagram1.DefaultContextMenuEnabled = false;

{% endhighlight %}
{% highlight vb %}

'hide default context menu
diagram1.DefaultContextMenuEnabled = False

{% endhighlight %}
{% endtabs %}

Sample Link

To view a sample:

1. Open the Syncfusion Dashboard.
2. Click the Windows Forms drop-down list and select Run Locally Installed Samples.
3. Navigate to Diagram Samples > Product Showcase > Diagram Builder.

## Conditionally show or hide context menu items at run time

You can conditionally show or hide context menu items at run time by using MouseClick event. This event will trigger while clicking mouse button you can make custom context menu based on what was selected. The following code example illustrates how to control the visibility of the context menu item based on diagram elements selection.


The following code example illustrates how to define those in events.

{% tabs %}
{% highlight c# %}

 private void Diagram1_MouseClick(object sender, MouseEventArgs e)
        {
            if(e.Button== MouseButtons.Right)
            {
                Node node = diagram1.Controller.GetNodeAtPoint(diagram1.Controller.MouseLocation);             
                if (node != null)
                {
                    if(node is ConnectorBase)
                    {
                        contextMenuStrip1.Items[0].Enabled = false;
                        contextMenuStrip1.Items[1].Enabled = true;
                    }
                    else
                    {
                        contextMenuStrip1.Items[0].Enabled = true;
                        contextMenuStrip1.Items[1].Enabled = false;
                    }
                    contextMenuStrip1.Show(diagram1, e.Location);
                }
            }
        }

{% endhighlight %}
{% endtabs %}

---
layout: post
title: Context-Menu | Windows Forms | Syncfusion
description: Context Menu
platform: windowsforms
control: Diagram
documentation: ug
---

# Context Menu

## Built-In Context Menu

Essential Diagram for Windows Forms provides Built-in Context Menu support for Diagram.

All available tools for Diagram control, File options, Edit options, Action options, Layout, Connectors and Shapes will be listed in the Built-in Context Menu. 

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
DefaultContextMenuEnabled</td><td>
Used to enable default context menu. </td><td>
NA </td><td>
Boolean  </td><td>
NA </td></tr>
</table>


Enabling Default Context Menu

You can enable the default context menu using the _DefaultContextMenuEnabled_ property.

The following code illustrates how to enable the default context menu:


{% tabs %}
{% highlight c# %}

    //show default context menu
    diagram1.DefaultContextMenuEnabled = true;
{% endhighlight %}
{% highlight vbnet %}

    'show default context menu
    diagram1.DefaultContextMenuEnabled = True

{% endhighlight %}
{% endtabs %}

![](Advanced-Features_images/Advanced-Features_img60.png)



The following code illustrates how to disable the default context menu:

{% tabs %}
{% highlight c# %}

    //hide default context menu
    diagram1.DefaultContextMenuEnabled = false;

{% endhighlight %}
{% highlight vbnet %}

    'hide default context menu
    diagram1.DefaultContextMenuEnabled = False

{% endhighlight %}
{% endtabs %}

Sample Link

To view a sample:

1. Open the Syncfusion Dashboard.
2. Click the Windows Forms drop-down list and select Run Locally Installed Samples.
3. Navigate to Diagram Samples > Product Showcase > Diagram Builder.

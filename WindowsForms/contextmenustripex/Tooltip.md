---
layout: post
title: Tooltip | Windows Forms | Syncfusion
description: Provides options to set tooltip for each Menuitem.
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Tooltip

By enabling **ShowItemToolTips** property, the menu items can display tooltips while mouse hovering. The **ToolTipText** property is used to set the text for the tooltip when **AutoToolTip** is set to false.

### Through Designer

1. Once ContextMenuStripEx control is added, right-click on the control in the designer and select **Properties** option. Now, in the **Properties** panel, under **Behavior > ShowItemToolTips** we need to set true.

![](Tooltip_Images/Properties2.png)

2. Once items are added, we need to set the tooltip by right-click on the particular item in the designer and select **Properties** option. Now, in the **Properties** panel, under **Behavior > ToolTipText** we need to set the text.

![](Tooltip_Images/Properties.png)

![](Tooltip_Images/Properties1.png)

3. The below image will shows a context menu with tooltip.

![](Tooltip_Images/Tooltip.png)

### Through Code

The below code snippet will explain how to set tooltip for context menu items.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.ShowItemToolTips = true;
this.toolStripMenuItem1.ToolTipText = "New";
this.toolStripTextBox1.ToolTipText = "Textbox";
this.toolStripComboBox1.ToolTipText = "Combobox";

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.ShowItemToolTips = True
Me.toolStripMenuItem1.ToolTipText = "New"
Me.toolStripTextBox1.ToolTipText = "Textbox"
Me.toolStripComboBox1.ToolTipText = "Combobox"

{% endhighlight %}
{% endtabs %}

![](Tooltip_Images/Tooltip1.png)

## Auto Tooltip

The **AutoTooltip** property is set to **false** by default. In such case, the control will display the text set in the **ToolTipText** property of the menu item. But on setting it to **true**, it will display the exact text set in the **Text** property if and only if **ToolTipText** property remains empty.

### Through Designer

Once items are added, we can set auto tooltip by right-clicking on the particular item in the designer and select **Properties** option. Now, in the **Properties** panel, under **Behavior > AutoToolTip** we need to set **true**.

![](Tooltip_Images/Properties3.png)

### Through Code

The below code snippet will explain how to set auto tooltip for menu items.

{% tabs %}
{% highlight c# %}

this.toolStripMenuItem1.AutoToolTip = true;
this.toolStripTextBox1.AutoToolTip = true;
this.toolStripComboBox1.AutoToolTip = true;

{% endhighlight %}

{% highlight vb %}

Me.toolStripMenuItem1.AutoToolTip = True
Me.toolStripTextBox1.AutoToolTip = True
Me.toolStripComboBox1.AutoToolTip = True

{% endhighlight %}
{% endtabs %}

![](Tooltip_Images/Tooltip2.png)
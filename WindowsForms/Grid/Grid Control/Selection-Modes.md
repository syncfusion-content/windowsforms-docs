---
layout: post
title: Selection-Modes
description: selection modes
platform: windowsform
control: Grid
documentation: ug
---

# Selection Modes



Essential Grid supports different selection modes for grid cells. A specific selection behavior can be set through GridControl.AllowSelection property. The following screen shot shows a window with a list of selection modes.

![](Grid-Control_images/Grid-Control_img224.jpeg)





Different types of selection modes are listed with their corresponding descriptions:

* Thealpha blending to highlight selected cellscan be achieved by using GridSelectionFlags.AlphaBlend option or selecting AlphaBlend check box under Selection Modes group box in UI. 
* Thedefault behavior for selecting cells, rows, columns, tables, multiple extending SHIFT key support, and alpha blendingcan be achieved by using GridSelectionFlags.Any option or selecting Any check box under Selection Modes group box in UI. 
* Column selectioncan be achieved by using GridSelectionFlags.Column option or selecting Column check box under Selection Modes group box in UI. 
* Row selectioncan be achieved by using GridSelectionFlags.Row option or selecting Row check box under Selection Modes group box in UI. 
* An existing selection can be extended when a user holds SHIFT key and uses arrow keys by using GridSelectionFlags.Keyboard option or selecting Keyboard check box under Selection Modes group box in UI. 
* Selection of both rows and columns simultaneously when multiple selection is enabledcan be achieved by using GridSelectionFlags.MixRangeType option or selecting MixRangeType check box under Selection Modes group box in UI.
* Selection of entire table can be achieved by using GridSelectionFlags.Table option or selecting Table check box under Selection Modes group box in UI.
* Selection of multiple ranges of cells using CTRL key can be achieved by using GridSelectionFlags.Multiple option or selecting Multiple check box under Selection Modes group box in UI.
* An existing selection using SHIFT key can be extended by using GridSelectionFlags.Shift option or selecting Shift check box under Selection Modes group box in UI. 
* Selection of cells using CTRL key can be disabled by using GridSelectionFlags.None option or selecting Cell check box under Selection Modes group box in UI. 

##Setting Specific Selection Mode

Specific selection modes can be set by using the following code examples:

{% highlight c# %}



this.gridControl1.AllowSelection = GridSelectionFlags.Row;

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1.AllowSelection = GridSelectionFlags.Row
{% endhighlight %}




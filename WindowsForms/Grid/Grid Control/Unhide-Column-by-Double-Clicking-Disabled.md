---
layout: post
title: Unhide-Column-by-Double-Clicking-Disabled
description: unhide column by double-clicking disabled
platform: windowsform
control: Grid
documentation: ug
---

# Unhide Column by Double-Clicking Disabled



Essential Grid has changed the unhide column operation to emulate the behavior found in Microsoft Excel. Previously, hidden columns could be shown by double-clicking a row. This behavior has been disabled so that applications created using Essential Grid will be similar to the hide/unhide behavior found in Microsoft Excel.

Table 29: Property Table

<table>
<tr>
<th>
PROPERTY</th><th>
DESCRIPTION</th><th>
TYPE</th><th>
DATA TYPE</th><th>
REFERENCE LINKS</th></tr>
<tr>
<td>
UnHideColsOnDblClick</td><td>
Indicates whether to unhide the hidden columns when the row is double clicked. </td><td>
Property </td><td>
Boolean </td><td>
N/A.</td></tr>
</table>

##Disabling Unhide Column by Double-Clicking 

To disable unhide column by double- clicking, set the UnHideColsOnDblClick property to true. By default this is set to true. 

{% highlight c# %}

//Disables unhide column when double clicking as found in Excel.

            this.gridControl1.UnHideColsOnDblClick = true;

{% endhighlight %}

{% highlight vbnet %}

'Disables unhide column when double clicking as found in Excel.

            Me.gridControl1.UnHideColsOnDblClick = True
{% endhighlight %}




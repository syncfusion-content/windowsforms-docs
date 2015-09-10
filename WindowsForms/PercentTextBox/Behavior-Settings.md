---
layout: post
title: Behavior Settings | WindowsForms | Syncfusion
description: Behavior Settings
platform: WindowsForms
control: Editors Package
documentation: ug
---


# Behavior Settings

The Behavior settings of the PercentTextBox control are discussed below.

## NegativeInputPendingOnSelectAll

The percent value of the PercentTextBox can be changed to a negative value using the properties given below.



<table>
<tr>
<th>
PercentTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
NegativeInputPendingOnSelectAll</td><td>
This property defines the behavior when the contents of the IntegerTextBox is fully selected and the negative key is pressed by the user.When set to 'True', the current value is not changed at all. The next key stroke is taken to be a new value and the entire contents of the PercentTextBox is replaced by the negative value of the key stroke character entered.When set to 'False', the current value is changed to the negative value immediately.</td></tr>
</table>



{% highlight C# %}



this.percentTextBox1.NegativeInputPendingOnSelectAll = true;

{% endhighlight %}



{% highlight vbnet %}



Me.percentTextBox1.NegativeInputPendingOnSelectAll = True
{% endhighlight %}



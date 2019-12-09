---
layout: post
title: StatusBarAdv-Behavior-Settings | WindowsForms | Syncfusion
description: statusbaradv - behavior settings
platform: WindowsForms
control: StatusBarAdv
documentation: ug
---

# StatusBarAdv - Behavior Settings

This section discusses the properties that determine the behavior of the StatusBarAdv control.

## AutoSize settings

This includes the properties that enable auto sizing of the StatusBarAdv control.

Property Table

<table>
<tr>
<td>
StatusBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
AutoSize</td><td>
Specifies whether a control will automatically resize itself to fit it's contents.</td></tr>
<tr>
<td>
AutoSizeMode</td><td>
Specifies the mode by which the control automatically resizes itself. The options included are given below.GrowAndShrink andGrowOnly.</td></tr>
</table>


If the 'GrowAndShrink' option is selected, then the control grows and shrinks to fit it's contents to a size that may be a little more or less than the value specified in the Size property of the control.

If the 'GrowOnly' option is selected, the control grows as much as necessary to fit it's contents, but doesn't shrink smaller than the value specified in the Size property of the control.

{% tabs %}
{% highlight c# %}

this.statusBarAdv1.AutoSize = true;
this.statusBarAdv1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
this.statusBarAdv1.AutoHeightControls = true;

{% endhighlight %}

{% highlight vb %}

Me.statusBarAdv1.AutoSize = True
Me.statusBarAdv1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly
Me.statusBarAdv1.AutoHeightControls = True

{% endhighlight %}
{% endtabs %}

## AutoHeight settings

The height of the panels can be made to change automatically when the height of the StatusBarAdv control changes. This can be accomplished using the property given below.

Property Table

<table>
<tr>
<td>
StatusBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
AutoHeightControls</td><td>
Determines if the StatusBarAdv will resize the height of the panels according to it's height.The default value will be set to 'True'.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.statusBarAdv1.AutoHeightControls = true;

{% endhighlight %}

{% highlight vb %}

Me.statusBarAdv1.AutoHeightControls = True

{% endhighlight %}
{% endtabs %}

The methods associated with the above properties are given below.

Methods Table

<table>
<tr>
<td>
Methods</td><td>
Description</td></tr>
<tr>
<td>
GetPreferredSize</td><td>
Returns the preferred size of the specified control.</td></tr>
<tr>
<td>
SetPreferredSize</td><td>
Sets the preferred size in the layout of the specified control.</td></tr>
</table>

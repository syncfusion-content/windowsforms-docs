---
layout: post
title: Appearance-and-Behavior-Settings
description: appearance and behavior settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---


# Appearance and Behavior Settings

This section discusses the appearance and behavior settings of the RadioButtonAdv control.

## Appearance Settings

DrawFocusRectangle

The focus rectangle can be hidden or made visible using the below given property.

Table 410: Property Table

<table>
<tr>
<th>
RadioButtonAdv Property</th><th>
Description</th></tr>
<tr>
<td>
DrawFocusRectangle</td><td>
Determines if the focus rectangle is visible when it gets the focus. The default value is set to 'True'.</td></tr>
</table>


{% highlight c# %}



this.radioButtonAdv1.DrawFocusRectangle = true;

{% endhighlight %}

{% highlight vbnet %}



Me.radioButtonAdv1.DrawFocusRectangle = True

{% endhighlight %}

## Behavior Settings

### AutoHeight

The height of the RadioButtonAdv can be automatically set using the property given below.

Table 411 : Property Table

<table>
<tr>
<th>
RadioButtonAdv Property</th><th>
Description</th></tr>
<tr>
<td>
AutoHeight</td><td>
Determines if the RadioButton will automatically calculate its height.</td></tr>
</table>


{% highlight c# %}

this.radioButtonAdv1.AutoHeight = true;

{% endhighlight %}

{% highlight vbnet %}

Me.radioButtonAdv1.AutoHeight = True

{% endhighlight %}

### RaiseEventOnClick

The below given property can be used to fire the OnClick event of the RadioButtonAdv.

Table 412 : Property Table

<table>
<tr>
<th>
RadioButtonAdv Property</th><th>
Description</th></tr>
<tr>
<td>
RaiseEventOnClick</td><td>
Specifies whether the OnClick event should be fired. The default value is set to 'True'.</td></tr>
</table>


{% highlight c# %}



this.radioButtonAdv1.RaiseEventOnClick = true;

{% endhighlight %}

{% highlight c# %}

Me.radioButtonAdv1.RaiseEventOnClick = True

{% endhighlight %}
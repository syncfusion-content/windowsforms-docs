---
layout: post
title: Behavior Settings
description: behavior settings
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# Behavior Settings

The behavior settings that are common to all the Layout Managers are discussed below.

## AutoLayout

The Layout Manager, by default, listens to the Container'sLayout events and performs the layout automatically.

_Table425: Property Table_

<table>
<tr>
<th>
LayoutManager Property</th><th>
Description</th></tr>
<tr>
<td>
AutoLayout</td><td>
Indicates whether the Layout Manager should layout automatically on Layout event.</td></tr>
</table>




{% highlight c# %}

this.borderLayout1.AutoLayout = true;







Me.borderLayout1.AutoLayout = True

{% endhighlight  %}

> Note: The above process can be prevented by setting the AutoLayout property to 'False' and invoking the layout explicitly through a call to the LayoutContainer() method.

## ContainerControl

The Container control to be laid out by the Layout Manager can be specified using the below given property.

_Table426: Property Table_

<table>
<tr>
<th>
LayoutManager Property</th><th>
Description</th></tr>
<tr>
<td>
ContainerControl</td><td>
Specifies the Container control that the Layout Manager will layout.</td></tr>
</table>




{% highlight c# %}

this.borderLayout1.ContainerControl = this;







Me.borderLayout1.ContainerControl = Me
{% endhighlight  %}

## Custom Layout Bounds

The Layout Manager will, by default, layout the Child components within the Container control's client rectangle. However, you can specify any custom layout bounds using the property given below.

_Table427: Property Table_

<table>
<tr>
<th>
LayoutManager Property</th><th>
Description</th></tr>
<tr>
<td>
CustomLayoutBounds</td><td>
Specifies the custom layout bounds, if any, to be used for layout calculation instead of the Container control's client rectangle.</td></tr>
</table>



{% highlight c# %}


this.borderLayout1.CustomLayoutBounds = new System.Drawing.Rectangle(0, 0, 0, 0);







Me.borderLayout1.CustomLayoutBounds = New System.Drawing.Rectangle(0, 0, 0, 0)

{% endhighlight  %}

> Note: When you specify the custom layout bounds and the Container is resizable, you should also set the AutoLayout property to 'False' and set a new custom layout Note: The layout is done within the Container's client rectangle, even if the Container has a scrollable display rectangle._


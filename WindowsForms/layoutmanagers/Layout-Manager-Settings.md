---
layout: post
title: Layout Manager Settings in Windows Forms LayoutManagers | Syncfusion
description: Learn about Layout Manager Settings support in Syncfusion Windows Forms LayoutManagers control and more details.
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# Layout Manager Settings in Windows Forms LayoutManagers

The settings that are common to all the Layout Manager's have been discussed in this section.

## Behavior settings

The behavior settings that are common to all the Layout Managers are discussed below.

## AutoLayout

The Layout Manager, by default, listens to the Container'sLayout events and performs the layout automatically.



<table>
<tr>
<th>
LayoutManager property</th><th>
Description</th></tr>
<tr>
<td>
AutoLayout</td><td>
Indicates whether the Layout Manager should layout automatically on Layout event.</td></tr>
</table>


{% tabs %}

{% highlight C# %}

this.borderLayout1.AutoLayout = true;

{% endhighlight  %}

{% highlight VB %}

Me.borderLayout1.AutoLayout = True

{% endhighlight  %}

{% endtabs %}

N> The above process can be prevented by setting the AutoLayout property to 'False' and invoking the layout explicitly through a call to the LayoutContainer() method.

## ContainerControl

The Container control to be laid out by the Layout Manager can be specified using the below given property.



<table>
<tr>
<th>
LayoutManager property</th><th>
Description</th></tr>
<tr>
<td>
ContainerControl</td><td>
Specifies the Container control that the Layout Manager will layout.</td></tr>
</table>


{% tabs %}

{% highlight C# %}

this.borderLayout1.ContainerControl = this;

{% endhighlight  %}

{% highlight VB %}

Me.borderLayout1.ContainerControl = Me

{% endhighlight  %}

{% endtabs %}

## Custom layout bounds

The Layout Manager will, by default, layout the Child components within the Container control's client rectangle. However, you can specify any custom layout bounds using the property given below.



<table>
<tr>
<th>
LayoutManager property</th><th>
Description</th></tr>
<tr>
<td>
CustomLayoutBounds</td><td>
Specifies the custom layout bounds, if any, to be used for layout calculation instead of the Container control's client rectangle.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


this.borderLayout1.CustomLayoutBounds = new System.Drawing.Rectangle(0, 0, 0, 0);

{% endhighlight  %}


{% highlight VB %}


Me.borderLayout1.CustomLayoutBounds = New System.Drawing.Rectangle(0, 0, 0, 0)

{% endhighlight  %}

{% endtabs %}

N> When you specify the custom layout bounds and the Container is resizable, you should also set the AutoLayout property to 'False' and set a new custom layout Note: The layout is done within the Container's client rectangle, even if the Container has a scrollable display rectangle.

## Margin settings

The margin settings that are common to all the Layout Managers are discussed below.

The layout bounds will also be adjusted to include some margin space along the borders according to the values specified in the properties given below. The default values of these properties are set to 'Zero'.



<table>
<tr>
<th>
LayoutManager properties</th><th>
Description</th></tr>
<tr>
<td>
TopMargin</td><td>
Gets/sets the top margin between the client rectangle and the layout rectangle.</td></tr>
<tr>
<td>
HortNearMargin</td><td>
Gets/sets the left margin between the client rectangle and the layout rectangle.</td></tr>
<tr>
<td>
HortFarMargin</td><td>
Gets/sets the right margin between the client rectangle and the layout rectangle.</td></tr>
<tr>
<td>
BottomMargin</td><td>
Gets/sets the bottom margin between the client rectangle and the layout rectangle.</td></tr>
</table>

{% tabs %}

{% highlight C# %}



this.borderLayout1.TopMargin = 20;

this.borderLayout1.HorzFarMargin = 20;

this.borderLayout1.HorzNearMargin = 20;

this.borderLayout1.BottomMargin = 20;

{% endhighlight  %}

{% highlight VB %}



Me.borderLayout1.TopMargin = 20

Me.borderLayout1.HorzFarMargin = 20

Me.borderLayout1.HorzNearMargin = 20

Me.borderLayout1.BottomMargin = 20

{% endhighlight  %}

{% endtabs %}

![Child controls arranged with margin in layout manager](Overview_images/Overview_img11.jpeg)



{% seealso %}

[Configuring BorderLayout](/windowsforms/layoutmanagers/borderlayout#configuring-borderlayout), [Configuring FlowLayout](/windowsforms/layoutmanagers/flowlayout#configuring-flowlayout), [Configuring GridLayout.](/https://help.syncfusion.com/windowsforms/layoutmanagers/gridlayout/overview)

{% endseealso %}

## Child control settings

The Child control settings for the Layout Managers are given below.

### Size

### Preferred size

The Layout Managers usually layout the components based on their preferred sizes. But a .NET control does not provide information regarding it's preferred size. To overcome this, a PreferredSize extended property is provided for each Child control at design time.

In code, you can perform the same using the methods given below.



<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
SetPreferredSize</td><td>
Associates a preferred size with the specified control.</td></tr>
<tr>
<td>
GetPreferredSize</td><td>
Retrieves the preferred size associated with the specified control.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


this.cardLayout1.SetPreferredSize(this.button1, new System.Drawing.Size(75, 92));

{% endhighlight  %}


{% highlight VB %}


Me.cardLayout1.SetPreferredSize(Me.button1, New System.Drawing.Size(75, 92))

{% endhighlight  %}

{% endtabs %}

### Minimum size

You can similarly associate a minimum size for a Child component through the MinimumSize extended property. However, some Layout Managers ignore this setting. Refer to the individual Layout Managers for more information on how the size plays an important part in the layout logic.

In code, you can perform the same using the methods given below.



<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
SetMinimumSize</td><td>
Associates a minimum size with the specified control.</td></tr>
<tr>
<td>
GetMinimumSize</td><td>
Retrieves the minimum size associated with the specified control.</td></tr>
</table>


{% tabs %}

{% highlight C# %}

this.cardLayout1.SetMinimumSize(this.button1, new System.Drawing.Size(75, 92));

{% endhighlight %}

{% highlight VB %}



Me.cardLayout1.SetMinimumSize(Me.button1, New System.Drawing.Size(75, 92))

{% endhighlight %}

{% endtabs %}

You can also dynamically provide preferred and minimum size information for a Child component at run time. The manner in which a Layout Manager determines the preferred size for a Child control is illustrated below.

* The layout manager checks if the Child control/component implements the IProvideLayoutInformation interface. If so, it calls into that interface to retrieve the preferred size.
* If the above step fails, the Layout Manager fires the ProvideLayoutInformation event, requesting the size information required. If the event is handled and the information provided, that size will be used.
* If the above step fails, the Layout Manager checks if a preferred size was provided statically during design time using the extended PreferredSize property or in code using the SetPreferredSize() method. If so, that size is used. If not, the current size of the Child control is made the preferred size and that size will be used.

![Child control arrangement architecture in layout manager](Overview_images/Overview_img12.jpeg)



N> The same steps are used to determine the minimum size, if required, for a Child control.
>
N> The above properties are available as the extended properties for the Child controls of CardLayout, FlowLayout and GridBagLayout only.

{% seealso %}

[BorderLayout – Configuring Child Control](/windowsforms/layoutmanagers/borderlayout#configuring-child-controls), [CardLayout - Configuring Child Controls](/windowsforms/layoutmanagers/cardlayout#configuring-child-controls), [FlowLayout - Configuring Child Controls](/windowsforms/layoutmanagers/flowlayout#configuring-child-controls), [GridLayout - Configuring Child Controls](/windowsforms/layoutmanagers/gridlayout#configuring-child-controls), [GridBagLayout - Configuring Child Controls](/windowsforms/layoutmanagers/gridbaglayout#configuring-child-controls)

{% endseealso %}

---
layout: post
title: Configuring CardLayout in Windows Forms CardLayout | Syncfusion®
description: Learn about Configuring CardLayout support in Syncfusion Windows Forms LayoutManagers control and more details.
platform: windowsforms
control: CardLayout
documentation: ug
---

# Configuring WinForms Card Layout

The configuration settings for `WinForms Card Layout` are described in this section.

## Card names

By default, when a new child control is added, the `WinForms Card Layout` will render a unique card name for it. This name can be modified using the following property.

<table>
<tr>
<th>WinForms Card Layout Property</th>
<th>Description</th>
</tr>
<tr>
<td>CardName</td>
<td>Specifies the name of the card.</td>
</tr>
</table>

{% tabs %}
{% highlight c# %}
this.cardLayout1.SetCardName(this.label1, "Card1");
{% endhighlight %}
{% highlight vb %}
Me.cardLayout1.SetCardName(Me.label1, "Card1")
{% endhighlight %}
{% endtabs %}

![WinForms CardLayout showing a card name set for a child control](ConfiguringCardLayout_images/ConfiguringCardLayout_img1.jpg)

The methods associated with the `CardName` property are as follows.

<table>
<tr>
<th>Method</th>
<th>Description</th>
</tr>
<tr>
<td>GetCardName</td>
<td>Returns the card name of a child component.</td>
</tr>
<tr>
<td>GetCardNames</td>
<td>Returns an array containing the card names as strings.</td>
</tr>
<tr>
<td>GetComponentFromName</td>
<td>Returns the associated control for a given card name.</td>
</tr>
<tr>
<td>GetNewCardName</td>
<td>Generates a new unique name for a card that could be added to this WinForms Card Layout.</td>
</tr>
<tr>
<td>SetCardName</td>
<td>Sets the card name for a child component.</td>
</tr>
</table>

>**NOTE**: This property is added as an extended property in the properties window of the child control added to the WinForms Card Layout.

## Card index

The index of the previous and next cards can be determined using the following properties.

<table>
<tr>
<th>WinForms Card Layout properties</th>
<th>Description</th>
</tr>
<tr>
<td>NextCardIndex</td>
<td>Indicates the index of the next card that will be shown when the `Next()` method is called.</td>
</tr>
<tr>
<td>PreviousCardIndex</td>
<td>Indicates the index of the previous card that will be shown when the `Previous()` method is called.</td>
</tr>
</table>

## Aspect ratio

The aspect ratio can be set using the following property.

<table>
<tr>
<th>WinForms Card Layout Properties</th>
<th>Description</th>
</tr>
<tr>
<td>MaintainAspectRatio</td>
<td>Indicates whether the aspect ratio should be maintained. The default value is `false`.</td>
</tr>
</table>

{% tabs %}
{% highlight c# %}
this.cardLayout1.SetMaintainAspectRatio(this.label1, true);
{% endhighlight %}
{% highlight vb %}
Me.cardLayout1.SetMaintainAspectRatio(Me.label1, True)
{% endhighlight %}
{% endtabs %}

The methods associated with the `MaintainAspectRatio` property are as follows.

<table>
<tr>
<th>Method</th>
<th>Description</th>
</tr>
<tr>
<td>GetMaintainAspectRatio</td>
<td>Returns a value indicating whether the aspect ratio is maintained based on the control's preferred size.</td>
</tr>
<tr>
<td>SetMaintainAspectRatio</td>
<td>Sets a value indicating whether the aspect ratio is maintained based on the control's preferred size.</td>
</tr>
</table>

## Configuring child controls

The WinForms Card Layout is derived from the layout manager base and inherits all the functionalities that the layout manager type exposes.

For example, when the WinForms Card Layout is added to a form and a panel control is added to it, this panel control acts as Card1, where users can add the needed controls. Then, another panel control can be added; it will act as Card2, and so on. During run time, only one card will be visible at a time. You can traverse through these cards by adding buttons and setting the appropriate code.

The following screenshot illustrates a panel control acting as the container control and a label control acting as a card.

![Child controls added as cards to the WinForms CardLayout through the designer](ConfiguringCardLayout_images/ConfiguringCardLayout_img2.jpeg)

### Image Settings

In a selected card, you can insert an image using the child (label) control's `Image` property.

<table>
<tr>
<th>Child control property</th>
<th>Description</th>
</tr>
<tr>
<td>Image</td>
<td>Gets or sets the image that will be displayed on the control.</td>
</tr>
</table>

{% tabs %}
{% highlight c# %}
this.label1.Image = ((System.Drawing.Bitmap)(resources.GetObject("label1.Image")));
{% endhighlight %}
{% highlight vb %}
Me.label1.Image = DirectCast((resources.GetObject("label1.Image")), System.Drawing.Bitmap)
{% endhighlight %}
{% endtabs %}

![WinForms CardLayout showing a card with a background image](ConfiguringCardLayout_images/ConfiguringCardLayout_img3.jpeg)

### Size

The preferred size and minimum size of the child controls can be set using the `PreferredSize` and `MinimumSize` extended properties of the child controls that are added to the WinForms Card Layout. Refer to the child control settings to know more.

## Layout mode

The WinForms Card Layout provides two modes to lay out the child controls. The mode can be set using the following property.

<table>
<tr>
<th>WinForms Card Layout properties</th>
<th>Description</th>
</tr>
<tr>
<td>LayoutMode</td>
<td>Specifies the layout mode for the child controls. The default value is set to `Default`. The options included are:<br/>1. Default<br/>2. Fill</td>
</tr>
</table>

When the layout mode of WinForms Card Layout is set to `Default`, the child control is simply centered within the container when the container's size is bigger than the child control's preferred size. However, if the container's size is smaller than the child control's preferred size, the child control's size will shrink down to its minimum size. When shrunk, you have an option to specify whether the preferred width/height aspect ratio should be maintained for that child control, which is specified using the extended `MaintainAspectRatio` property of each child.

When the layout mode is set to `Fill`, it simply resizes the child control to fill the entire container client area.

{% tabs %}
{% highlight c# %}
this.cardLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.CardLayoutMode.Fill;
{% endhighlight %}
{% highlight vb %}
Me.cardLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.CardLayoutMode.Fill
{% endhighlight %}
{% endtabs %}

![WinForms CardLayout with the card filling the entire container](ConfiguringCardLayout_images/ConfiguringCardLayout_img4.jpeg)

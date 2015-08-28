---
layout: post
title: Configuring CardLayout
description: configuring cardlayout
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# Configuring CardLayout	

The configuration settings for the CardLayout have been discussed in this topic.

## Card Names

By default, when a new Child control is added, the CardLayout will render a unique card name for it. This name can be modified by using the property given below.

_Table433: Property Table_

<table>
<tr>
<th>
CardLayout Property</th><th>
Description</th></tr>
<tr>
<td>
CardName</td><td>
Specifies the name of the card.</td></tr>
</table>




{% highlight c# %}

this.cardLayout1.SetCardName(this.label1, "Card1");







Me.cardLayout1.SetCardName(Me.label1, "Card1")

{% endhighlight  %}

![](Overview_images/Overview_img24.jpeg) 



The methods associated with the above property are given below.

_Table434: Methods Table_

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
GetCardName</td><td>
Returns the card name of a Child component.</td></tr>
<tr>
<td>
GetCardNames</td><td>
Returns an array containing the card names as strings.</td></tr>
<tr>
<td>
GetComponentFromName</td><td>
Returns an associated control given a card name. </td></tr>
<tr>
<td>
GetNewCardName</td><td>
Generates a new unique name for the card that could be added to this CardLayout. </td></tr>
<tr>
<td>
SetCardName</td><td>
Sets the card name for a Child component.</td></tr>
</table>

> Note: This property is added as an extended property in the properties window of the Child control added to the CardLayout.

## Card Index

The index of the previous and next cards can be determined using the below given properties.

_Table435: Property Table_

<table>
<tr>
<th>
CardLayout Properties</th><th>
Description</th></tr>
<tr>
<td>
NextCardIndex</td><td>
Returns the index of the next card that will be shown when the Next() method gets called.</td></tr>
<tr>
<td>
PreviousCardIndex</td><td>
Returns the index of the previous card that will be shown when the Previous() method gets called.</td></tr>
</table>

## Aspect Ratio

The aspect ratio can be set using the property given below.

_Table436: Property Table_

<table>
<tr>
<th>
CardLayout Property</th><th>
Description</th></tr>
<tr>
<td>
MaintainAspectRatio</td><td>
Indicates if the aspect ratio is to be maintained. The default value is set to 'False'.</td></tr>
</table>



{% highlight c# %}


this.cardLayout1.SetMaintainAspectRatio(this.label1, true);







Me.cardLayout1.SetMaintainAspectRatio(Me.label1, True)

{% endhighlight  %}

The methods associated with the above property are given below.

_Table437: Methods Table_

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
GetMaintainAspectRatio</td><td>
Returns the value for maintaining aspect ratio based on the control's preferred size.</td></tr>
<tr>
<td>
SetMaintainAspectRatio</td><td>
Sets the value for maintaining aspect ratio based on the control's preferred size.</td></tr>
</table>

See Also

Card Layout - Configuring Child Controls
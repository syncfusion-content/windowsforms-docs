---
layout: post
title: CardLayout
description: cardlayout
platform: WindowsForms
control: Layout Managers Package
documentation: ug
---
# CardLayout

A CardLayout is a Layout Manager that is applied to a Container, and components are added to the layout in a particular form and not between different forms. It treats each component in the Container as a card. Only one card is visible at a time, and the Container acts as a stack of cards. The first component added to a CardLayout object is the visible component when the Container is first displayed.

The Child component / card can either be made to fill or simply centered within the Container. Some common uses of a CardLayout are to create WizardControls and property pages.

N> The WizardControl uses the CardLayout component internally in it's implementation.

In it's simplest form, this Layout Manager can be used to automatically arrange the Child components in one or more rows, as given below.

![](Overview_images/Overview_img23.jpeg) 



A Sample which demonstrates the CardLayout is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

{% seealso %}

Creating a Simple Layout, 

{% endseealso %}

## Configuring CardLayout	

The configuration settings for the CardLayout have been discussed in this topic.

### Card Names

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



{% endhighlight %}
{% highlight vbnet %}



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

N> This property is added as an extended property in the properties window of the Child control added to the CardLayout.

### Card Index

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

### Aspect Ratio

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



{% endhighlight %}
{% highlight vbnet %}



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

{% seealso %}

Card Layout - Configuring Child Controls

{% endseealso %}

## Configuring Child Controls

Deriving from the Layout Manager base, the CardLayout inherits all the functionality that the Layout Manager type exposes.

For example, when the CardLayout is added to a form, and a Panel control is added to it, then this Panel control acts as Card1, where the user can add the needed controls. Then another Panel control can be added which will act as Card2 and so on. During runtime, only one Card will be visible at a time. You can traverse through these cards by adding buttons and setting the appropriate code.

In the following screen shot, Panel control acts as the Container control and Label control acts as a card.

![]() 
Figure 694: Adding Labels as Cards

### Image Settings

In the selected card, you can insert an image using the Child (Label) control property as shown below.


Table 438: Property Table

<table>
<tr>
<th>Child Control Property</th>
<th>Description</th>
</tr>
<tr>
<td>Image</td>
<td>Gets / sets the image that will be displayed on the control.</td>
</tr>
</table>

### Child Control Property	Description
Image	Gets / sets the image that will be displayed on the control.

{% highlight c# %}

this.label1.Image = ((System.Drawing.Bitmap)(resources.GetObject("label1.Image")));
 
{% endhighlight %}
{% highlight vbnet %}

Me.label1.Image = DirectCast((resources.GetObject("label1.Image")), System.Drawing.Bitmap)

{% endhighlight %}
 
 ![]()
Figure 695: Setting an Image for the Card

#### Size

The preferred size and minimum size of the Child controls can be set using the PreferredSize and MinimumSize extended properties of the Child controls that are added to the CardLayout. Refer Child Control Settings to know about this topic.

#### Layout Mode

The CardLayout provides two modes to layout the Child controls. The mode can be set using the property given below.



Table 439: Property Table

<table>
<tr>
<th>CardLayout Property</th>
<th>Description</th>
</tr>
<tr>
<td>LayoutMode</td>
<td>Specifies the layout mode for the Child controls. The default value is set to 'Default'.</br></br>The options included are as follows.</br></br>Default and</br/>Fill.</td>
</tr>
</table>

When the layout mode of CardLayout is set to 'Default', the Child control is simply centered within the Container when the Container's size is bigger than the Child control's preferred size. However, if the Container's size is smaller than the Child controls's preferred size, the Child control's size will shrink down to its minimum size. When shrunk, you have an option to specify whether the preferred width / height aspect ratio should be maintained for that Child control, which is specified using the extended MaintainAspectRatio property of each Child.

When the layout mode is set to 'Fill', it simply resizes the Child control to fill the entire Container client area.

{% highlight c# %}

this.cardLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.CardLayoutMode.Fill;
 
{% endhighlight %}
{% highlight vbnet %}

Me.cardLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.CardLayoutMode.Fill

{% endhighlight %}
 
 ![]()
Figure 696: Layout Mode set to "Fill"

## Browsing Through Cards

This section discusses illustrates how to browse through the Cards (Child controls) that have been added to the CardLayout Manager.

Through Designer

The selected card can be displayed using the property given below, which simply takes the card name as input.

_Table440: Property Table_

<table>
<tr>
<th>
CardLayout Property</th><th>
Description</th></tr>
<tr>
<td>
SelectedCard</td><td>
Gets / sets the current card's name.</td></tr>
</table>




{% highlight c# %}

this.cardLayout1.SelectedCard = "Card1";



{% endhighlight %}
{% highlight vbnet %}



Me.cardLayout1.SelectedCard = "Card1"

{% endhighlight  %}

 ![](Overview_images/Overview_img29.jpeg) 



You can also browse through the different cards using the methods given below.

_Table441: Methods Table_

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
First</td><td>
Shows the first card.</td></tr>
<tr>
<td>
Next</td><td>
Show the next card in the list.</td></tr>
<tr>
<td>
Previous</td><td>
Show the previous card in the list.</td></tr>
<tr>
<td>
Last</td><td>
Show the last card in the list.</td></tr>
</table>

N> The SmartTag feature (available only in Visual Studio 2005) can also be used to browse through the cards of the CardLayout.

### Through Code

Drag and drop the ComboBox and the Previous and Next Buttons for viewing the selected card. Use the Previous() and Next() methods of the CardLayout to see the CardLayout in action inside the Previous and Next Button Clicks.



{% highlight c# %}

private void Previous_Click(object sender, System.EventArgs e)

{

this.cardLayout1.Previous();

}



private void Next_Click(object sender, System.EventArgs e)

{

this.cardLayout1.Next();

}



{% endhighlight  %}
{% highlight vbnet %}



Private Sub Previous_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Me.cardLayout1.Previous()

End Sub



Private Sub Next_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Me.cardLayout1.Next()

End Sub

{% endhighlight  %}

![](Overview_images/Overview_img31.jpeg) 



At run time, cards can be selected using the items in the ComboBox or by Button clicks.

![](Overview_images/Overview_img32.jpeg)



{% seealso %}

Configuring CardLayout, Configuring Child Controls, Child Control Settings

{% endseealso %}
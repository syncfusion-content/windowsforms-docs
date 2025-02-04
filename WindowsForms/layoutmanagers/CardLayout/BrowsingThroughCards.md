---
layout: post
title: Browsing Through Cards in Windows Forms LayoutManagers | Syncfusion®
description: Learn about Browsing Through Cards support in Syncfusion® Windows Forms LayoutManagers control and more details.
platform: windowsforms
control: CardLayout
documentation: ug
---

# Browsing Through Cards in Windows Forms LayoutManagers

This section explains how to browse through the cards (child controls) that have been added to the CardLayout manager.

## Through designer

The selected card can be displayed using the following property, which simply takes the card name as input.

<table>
<tr>
<th>
CardLayout Properties</th><th>
Description</th></tr>
<tr>
<td>
SelectedCard</td><td>
Specifies the current card’s name</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.cardLayout1.SelectedCard = "Card1";

{% endhighlight %}

{% highlight vb %}

Me.cardLayout1.SelectedCard = "Card1"

{% endhighlight %}

{% endtabs %}

![Change selected card through smart tag in designer](BrowsingThroughCards_images/BrowsingThroughCards_img1.jpg)

You can also browse through the different cards using the following methods.

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
Shows the next card in the list.</td></tr>
<tr>
<td>
Previous</td><td>
Shows the previous card in the list.</td></tr>
<tr>
<td>
Last</td><td>
Shows the last card in the list.</td></tr>
</table>

N> The SmartTag feature (available only in Visual Studio 2005) can also be used to browse through the cards of the CardLayout.

## Through code

Drag and drop the ComboBox, and the Previous and Next buttons for viewing a selected card. Use the Previous() and Next() methods of the CardLayout to see the CardLayout in action inside the Previous and Next Button clicks.

{% tabs %}

{% highlight c# %}

private void Previous_Click(object sender, System.EventArgs e)
{
	this.cardLayout1.Previous();
}

private void Next_Click(object sender, System.EventArgs e)
{
	this.cardLayout1.Next();
}

{% endhighlight %}

{% highlight vb %}

Private Sub Previous_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Me.cardLayout1.Previous()

End Sub

Private Sub Next_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Me.cardLayout1.Next()

End Sub

{% endhighlight %}

{% endtabs %}

![Move to the next card from collection of cards in CardLayout](BrowsingThroughCards_images/BrowsingThroughCards_img2.jpeg)

At run time, cards can be selected using the items in the ComboBox or by button clicks.

![Select the card from the collection of cards thorugh drop-down list](BrowsingThroughCards_images/BrowsingThroughCards_img3.jpeg)


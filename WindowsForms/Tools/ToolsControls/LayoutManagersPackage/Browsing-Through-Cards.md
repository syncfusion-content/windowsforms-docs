---
layout: post
title: Browsing Through Cards
description: browsing through cards
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# Browsing Through Cards

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

> Note: The SmartTag feature (available only in Visual Studio 2005) can also be used to browse through the cards of the CardLayout.

## Through Code

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



See Also

Configuring CardLayout, Configuring Child Controls, Child Control Settings
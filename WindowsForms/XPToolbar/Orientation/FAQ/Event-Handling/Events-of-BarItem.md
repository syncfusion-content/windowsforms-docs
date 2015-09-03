---
layout: post
title: Events-of-BarItem
description: events of baritem
platform: WindowsForms
control: Orientation
documentation: ug
---

 Events of BarItem

This section discusses the events of bar item. 

_Table_ _519_: _Events Table_

<table>
<tr>
<th>
BarItem Events</th><th>
Description</th></tr>
<tr>
<td>
Click</td><td>
It is handled when the bar item is clicked by the user.</td></tr>
<tr>
<td>
DoubleClick</td><td>
It is handled when the bar item is double clicked by the user.</td></tr>
<tr>
<td>
Selected</td><td>
It is handled when the user selects a bar item during menu navigation using mouse or keyboard.</td></tr>
<tr>
<td>
UnSelected</td><td>
It is handled when the bar item has been unselected during menu navigation using mouse or keyboard.</td></tr>
</table>


{% highlight c# %}



//Enable themes when a BarItem is clicked

private void barItem_Click(object sender, System.EventArgs e)

{

this.barManager1.ThemesEnabled = true;

}



//Disable themes when a BarItem is double clicked

private void barItem_Click(object sender, System.EventArgs e)

{

this.barManager1.ThemesEnabled = true;

}



//Displays the text of selected BarItem in the status bar

private void barItem_Selected(object sender, System.EventArgs e)

{

BarItem item = sender as BarItem;

this.staticBarItem1.Text = item.Text;

}



private void barItem1_Unselected(object sender, System.EventArgs e)

{

ParentBarItem barItem = sender as BarItem;

Console.WriteLine(barItem.Text + " Unselected.");

}

{% endhighlight %}

{% highlight vbnet %}



'Enable themes when a BarItem is clicked

Private Sub barItem_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Me.barManager1.ThemesEnabled = true

End Sub



'Disable themes when a BarItem is double clicked

Private Sub barItem_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Me.barManager1.ThemesEnabled = true

End Sub



'Displays the text of selected BarItem in the status bar

Private Sub barItem_Selected(ByVal sender As Object, ByVal e As System.EventArgs)

    Dim item As BarItem = CType(IIf(TypeOf sender Is BarItem, sender, Nothing), BarItem)

    Me.staticBarItem1.Text = item.Text

End Sub



Private Sub barItem1_Unselected(ByVal sender As Object, ByVal e As System.EventArgs)

    Dim barItem As ParentBarItem = CType(IIf(TypeOf sender Is BarItem, sender, Nothing), BarItem)

    Console.WriteLine(barItem.Text & " Unselected.")

End Sub

{% endhighlight %}


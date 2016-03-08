---
layout: post
title: ListBarItem-Events | Windows Forms | Syncfusion
description: listbaritem events
platform: windowsforms
control: Orientation
documentation: ug
---

 ListBarItem Events

ListBarItem includes Events of BarItem and also contains events discussed in this section. 

_Table_ _524_:  _Events Table_

<table>
<tr>
<th>
Events</th><th>
Description</th></tr>
<tr>
<td>
BeforeExpand</td><td>
Triggers before the ListBarItem displays.</td></tr>
<tr>
<td>
AfterExpand</td><td>
Triggers when the ListBarItem is displayed.</td></tr>
</table>


{% highlight c# %}



// Triggers when the ListBarItem is displayed

private void listBarItem1_AfterExpand(object sender, EventArgs e)

{

    Console.WriteLine(listBarItem1.Text);

}



// Triggers before the ListBarItem displays

private void listBarItem1_BeforeExpand(object sender, EventArgs e)

{

    Console.WriteLine(listBarItem1.Text);

}

{% endhighlight %}

{% highlight vbnet %}



' Triggers when the ListBarItem is displayed

Private Sub listBarItem1_AfterExpand(ByVal sender As Object, ByVal e As EventArgs)

    Console.WriteLine(listBarItem1.Text)

End Sub



' Triggers before the ListBarItem displays

Private Sub listBarItem1_BeforeExpand(ByVal sender As Object, ByVal e As EventArgs)

    Console.WriteLine(listBarItem1.Text)

End Sub

{% endhighlight %}


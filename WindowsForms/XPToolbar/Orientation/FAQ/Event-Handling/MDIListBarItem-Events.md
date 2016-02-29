---
layout: post
title: MDIListBarItem-Events | Windows Forms | Syncfusion
description: mdilistbaritem events
platform: windowsforms
control: Orientation
documentation: ug
---

 MDIListBarItem Events

MDIListBarItem includes Events of BarItem and also contains events discussed in this section. 

_Table_ _522_: _Events Table_

<table>
<tr>
<th>
Events</th><th>
Description</th></tr>
<tr>
<td>
BeforeExpand</td><td>
Triggers before the MdiListBarItem displays.</td></tr>
<tr>
<td>
AfterExpand</td><td>
Triggers when the MdiListBarItem is displayed.</td></tr>
</table>


{% highlight c# %}



// Triggers when the MdiListBarItem is displayed

private void mdiListBarItem1_AfterExpand(object sender, EventArgs e)

{

    Console.WriteLine(mdiListBarItem1.Text);

}



// Triggers before the MdiListBarItem displays

private void mdiListBarItem1_BeforeExpand(object sender, EventArgs e)

{

    Console.WriteLine(mdiListBarItem1.Text);

}

{% endhighlight %}

{% highlight vbnet %}



' Triggers when the MdiListBarItem is displayed

Private Sub mdiListBarItem1_AfterExpand(ByVal sender As Object, ByVal e As EventArgs)

    Console.WriteLine(mdiListBarItem1.Text)

End Sub



' Triggers before the MdiListBarItem displays

Private Sub mdiListBarItem1_BeforeExpand(ByVal sender As Object, ByVal e As EventArgs)

    Console.WriteLine(mdiListBarItem1.Text)

End Sub

{% endhighlight %}



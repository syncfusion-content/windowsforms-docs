---
layout: post
title: How-to-Suppress-KeyDown-Event | Windows Forms | Syncfusion
description: how to suppress keydown event
platform: windowsforms
control: Grid
documentation: ug
---

# How to Suppress KeyDown Event

To suppress the TableControlCurrentCellKeyDown event, enable the SuppressKeyPress property in this event.  To get the Keys data, override the ProcessCmdKey() method. 

1. Suppress the KeyDown event as given in the following code:
{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

void gridGroupingControl1_TableControlCurrentCellKeyDown(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlKeyEventArgs e)
{
	e.Inner.SuppressKeyPress = true;
}
{% endhighlight %}

{% highlight vb %}

Private Sub gridGroupingControl1_TableControlCurrentCellKeyDown(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlKeyEventArgs)
e.Inner.SuppressKeyPress = True
End Sub
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

2. Handle the ProcessCmdKey() method to get the keys data as given in the following code: 
{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
{
	Keys keyCode = keyData & Keys.KeyCode;
	switch (keyCode)
	{
		case Keys.Down: Console.WriteLine("down");                 
			break;

		case Keys.Up: Console.WriteLine("Up");
			break;

		case Keys.Right: Console.WriteLine("Right");
			break;

		case Keys.Left: Console.WriteLine("Left");
			break;

		case Keys.PageUp: Console.WriteLine("PageUp");
			break;

		case Keys.PageDown: Console.WriteLine("PageDown");
			break;
	}            
		return base.ProcessCmdKey(ref msg, keyData);
}
{% endhighlight %}

{% highlight vb %}

Protected Overrides Function ProcessCmdKey(ByRef msg As Message, ByVal keyData As Keys) As Boolean
Dim keyCode As Keys = keyData And Keys.KeyCode
Select Case keyCode
Case Keys.Down
Console.WriteLine("down")
Exit Select

Case Keys.Up
Console.WriteLine("Up")
Exit Select

Case Keys.Right
Console.WriteLine("Right")
Exit Select

Case Keys.Left
Console.WriteLine("Left")
Exit Select

Case Keys.PageUp
Console.WriteLine("PageUp")
Exit Select

Case Keys.PageDown
Console.WriteLine("PageDown")
Exit Select
End Select
Return MyBase.ProcessCmdKey(msg, keyData)
End Function
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}
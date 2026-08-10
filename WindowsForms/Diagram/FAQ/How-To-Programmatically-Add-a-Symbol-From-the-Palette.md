---
layout: post
title: How to add a symbol to palette in Windows Forms Diagram | Syncfusion®
description: Learn how to programmatically add a symbol from a symbol palette to the Syncfusion® Windows Forms Diagram control using code.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to add a symbol to palette programmatically in WinForms Diagram

The following code sample demonstrates how you can programmatically add a symbol from the symbol palette to a diagram.


{% tabs %}

{% highlight c# %}

if (paletteGroupView1.Palette.Nodes.Count > 0)

{

   Node nc =(Node)paletteGroupView1.Palette.Nodes[0].Clone();                

   diagram1.Model.AppendChild(nc);

}

{% endhighlight %}

{% highlight vbnet %}

If paletteGroupView1.Palette.Nodes.Count > 0 Then 

  	Dim nc As Node = DirectCast(paletteGroupView1.Palette.Nodes(0).Clone(), Node) 

	diagram1.Model.AppendChild(nc) 

End If 

{% endhighlight %}

{% endtabs %}


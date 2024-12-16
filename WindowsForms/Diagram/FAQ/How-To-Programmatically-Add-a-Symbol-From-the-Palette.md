---
layout: post
title: How To Programmatically Add a Symbol From the Palette | Syncfusion®
description: how to programmatically add a symbol from the palette
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Programmatically Add a Symbol From the Palette

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


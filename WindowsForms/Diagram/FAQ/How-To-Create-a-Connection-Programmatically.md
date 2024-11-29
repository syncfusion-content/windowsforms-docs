---
layout: post
title: How To Create a Connection Programmatically | Diagram | Windows Forms | Syncfusion®
description: how to create a connection programmatically
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Create a Connection Programmatically

Typically, symbols and links are connected together using the interactive LinkTool UI tool or the LinkCmd command class. Sometimes, it is useful to create connections programmatically. For example, you might be generating a diagram from the data in a database or possibly even writing your own custom link tool. You might even create a connection between two symbols directly without having a link in between.

The following code creates a link and connects it to the center ports of two symbols.


{% tabs %}

{% highlight c# %}

public Link LinkSymbols(Symbol sym1, Symbol sym2)

{

    Link link = new Link(Link.Shapes.Line);

    sym1.Connect(sym1.CenterPort, link.TailPort);

    sym2.Connect(link.HeadPort, sym2.CenterPort);

    return link;

}

{% endhighlight %}

{% highlight vbnet %}

Public Function LinkSymbols(ByVal sym1 As Syncfusion.Windows.Forms.Diagram.Symbol, ByVal sym2 As Syncfusion.Windows.Forms.Diagram.Symbol) As LinkLabel.Link

Dim link As LinkLabel.Link = New LinkLabel.Link(link.Shapes.Line)

sym1.Connect(sym1.CenterPort, link.TailPort)

sym2.Connect(link.HeadPort, sym2.CenterPort)

Return link

End Function

{% endhighlight %}

{% endtabs %}


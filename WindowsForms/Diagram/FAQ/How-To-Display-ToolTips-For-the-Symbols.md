---
layout: post
title: How To Display ToolTips For the Symbols | Syncfusion®
description: how to display tooltips for the symbols
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Display ToolTips For the Symbols

ToolTips can be displayed using the Model's MouseEnter and MouseLeave events. Here is a sample where tooltips are displayed only for nodes of the type 'MySymbol'.

{% tabs %}

{% highlight c# %}

private void Model_MouseEnter(object sender, NodeMouseEventArgs evtArgs)

{
    if (evtArgs.Node.GetType() == typeof(MySymbol))
    {
        this.toolTip1.SetToolTip(this.diagram1, evtArgs.Node.Name.ToString());
        this.toolTip1.Active = true;
    }
}

private void Model_MouseLeave(object sender, NodeMouseEventArgs evtArgs)

{
    this.toolTip1.Active = false;
}

{% endhighlight %}

{% highlight vbnet %}

Private Sub Model_MouseEnter(ByVal sender As Object, ByVal evtArgs As Syncfusion.Windows.Forms.Diagram.NodeMouseEventArgs)

If evtArgs.Node.Name.StartsWith("MySymbol") Then

Me.toolTip1.SetToolTip(Me.Diagram1, evtArgs.Node.Name.ToString())

Me.toolTip1.Active = True

End If

End Sub

Private Sub Model_MouseLeave(ByVal sender As Object, ByVal evtArgs As Syncfusion.Windows.Forms.Diagram.NodeMouseEventArgs)

Me.toolTip1.Active = False

End Sub

{% endhighlight %}

{% endtabs %}
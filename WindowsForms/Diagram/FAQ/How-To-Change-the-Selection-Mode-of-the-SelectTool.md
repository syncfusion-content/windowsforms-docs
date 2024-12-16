---
layout: post
title: How To Change the Selection Mode of the SelectTool | Syncfusion®
description: how to change the selection mode of the selecttool
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Change the Selection Mode of the SelectTool

The Diagram SelectTool provides an enum property called _SelectMode_, to change the selection mode. The following are the supported selection modes: 

* Containing - Specific objects that are fully enveloped by the tracking rectangle will be selected by the tool.
Intersecting - Specific objects that are intersecting the tracking rectangle will be selected by the tool. 

Containing is the default selection mode. 

The following code snippet illustrates how to change the selection mode at runtime:

{% tabs %}

{% highlight c# %}

((DiagramViewerEventSink)diagram1.EventSink).ToolActivated += new ToolEventHandler(Diagram_ToolActivated);

private void Diagram_ToolActivated(ToolEventArgs evtArgs)

{
	if (evtArgs.Tool is SelectTool)

	{

		//change the SelectionMode as "Intersecting" which Specifies that objects intersecting the tracking rectangle will be selected by the tool.

		((SelectTool)evtArgs.Tool).SelectMode = SelectMode.Intersecting;

	}
}
{% endhighlight %}

{% highlight vbnet %}

AddHandler (CType(Diagram1.EventSink, DiagramViewerEventSink)).ToolActivated, AddressOf Diagram_ToolActivated

Private Sub Diagram_ToolActivated(ByVal evtArgs As ToolEventArgs)

	If TypeOf evtArgs.Tool Is SelectTool Then

	'change the SelectionMode as "Intersecting" which Specifies that objects intersecting the tracking rectangle will be selected by the tool. 

	CType(evtArgs.Tool, SelectTool).SelectMode = SelectMode.Intersecting

	End If

End Sub

{% endhighlight %}

{% endtabs %}


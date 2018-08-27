---
layout: post
title: How To Detect Whether a New Connection Has Been Added  R | Diagram | Windows Forms | Syncfusion
description: how to detect whether a new connection has been created / removed from a diagram
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Detect Whether a New Connection Has Been Created / Removed From a Diagram

You can use the Diagram.Model.EventSink's ConnectionChanging/ConnectionChanged events to detect whether a new connection has been created / removed from a diagram.

The following code snippet illustrates how to detect a new link that has been added to the diagram, and the symbols connected by the new link. It also illustrates how to remove a link that connects symbols of the same type.

{% tabs %}

{% highlight c# %}

///Registering the ConnectionsChanging and ConnectionsChanged events... 
diagram1.Model.EventSink.ConnectionsChanging += EventSink_ConnectionsChanging;
diagram1.Model.EventSink.ConnectionsChanged += EventSink_ConnectionsChanged;

void EventSink_ConnectionsChanging(CollectionExEventArgs evtArgs)
{
EndPoint endpoint = evtArgs.Element as EndPoint;
if (evtArgs.ChangeType == CollectionExChangeType.Insert)
{
//Add your logic here while creating the connection...
if (endpoint.Port != null)
MessageBox.Show("Connection creating from " + endpoint.Port.Container.Name);
}
else if (evtArgs.ChangeType == CollectionExChangeType.Remove)
{
//Add your logic here while removing the connection...
if (endpoint.Port != null)
MessageBox.Show("Connection removing from " + endpoint.Port.Container.Name);
}
}

void EventSink_ConnectionsChanged(CollectionExEventArgs evtArgs)
{
EndPoint endpoint = evtArgs.Element as EndPoint;
if (evtArgs.ChangeType == CollectionExChangeType.Insert)
{
//Add your logic here when created the connection...
MessageBox.Show("Connection created with " + endpoint.Port.Container.Name);
}
else if (evtArgs.ChangeType == CollectionExChangeType.Remove)
{
//Add your logic here when removed the connection...
MessageBox.Show("Connection has been removed");
}
}




{% endhighlight %}

{% highlight vbnet %}

'''Registering the ConnectionsChanging and ConnectionsChanged events... 
diagram1.Model.EventSink.ConnectionsChanging += EventSink_ConnectionsChanging
diagram1.Model.EventSink.ConnectionsChanged += EventSink_ConnectionsChanged

Private Sub EventSink_ConnectionsChanging(ByVal evtArgs As CollectionExEventArgs)
Dim endpoint As EndPoint = TryCast(evtArgs.Element, EndPoint)
If evtArgs.ChangeType = CollectionExChangeType.Insert Then
'Add your logic here while creating the connection...
If endpoint.Port IsNot Nothing Then
MessageBox.Show("Connection creating from " & endpoint.Port.Container.Name)
End If
ElseIf evtArgs.ChangeType = CollectionExChangeType.Remove Then
'Add your logic here while removing the connection...
If endpoint.Port IsNot Nothing Then
MessageBox.Show("Connection removing from " & endpoint.Port.Container.Name)
End If
End If
End Sub

Private Sub EventSink_ConnectionsChanged(ByVal evtArgs As CollectionExEventArgs)
Dim endpoint As EndPoint = TryCast(evtArgs.Element, EndPoint)
If evtArgs.ChangeType = CollectionExChangeType.Insert Then
'Add your logic here when created the connection...
MessageBox.Show("Connection created with " & endpoint.Port.Container.Name)
ElseIf evtArgs.ChangeType = CollectionExChangeType.Remove Then
'Add your logic here when removed the connection...
MessageBox.Show("Connection has been removed")
End If
End Sub

{% endhighlight %}

{% endtabs %}
---
layout: post
title: How To Detect Whether a New Link Has Been Added  R | Diagram | WindowsForms | Syncfusion
description: how to detect whether a new link has been added / removed from a diagram
platform: WindowsForms
control: Diagram
documentation: ug
---

# How To Detect Whether a New Link Has Been Added / Removed From a Diagram

You can use the Diagram.Model.ConnectionsChangeComplete event to detect whether a new link has been added / removed from a diagram.

The following code snippet illustrates how to detect a new link that has been added to the diagram, and the symbols connected by the new link. It also illustrates how to remove a link that connects symbols of the same type.

{% tabs %}

{% highlight c# %}

// Use the Diagram.ConnectionsChangeComplete event to be notified of the creation of a new Link.

// The Link.FromNode and Link.ToNode properties provide access to the symbols that the link connects.

private void diagram1_ConnectionsChangeComplete(object sender, Syncfusion.Windows.Forms.Diagram.ConnectionCollectionEventArgs evtArgs)

{

    if ((evtArgs.ChangeType == Syncfusion.Windows.Forms.Diagram.CollectionExChangeType.Insert) && (evtArgs.Connection != null))

    {

        Connection newconn = evtArgs.Connection;

        Link newlink = null;

        if (newconn.SourcePort is LinkPort)

            newlink = newconn.SourcePort.Container as Link;

        else if (newconn.TargetPort is LinkPort)

            newlink = newconn.TargetPort.Container as Link;

        if ((newlink != null) && (newlink.FromNode != null) && (newlink.ToNode != null))

        {

            Trace.WriteLine("A new link was added to the Diagram");

            Symbol tailsymbol = newlink.FromNode as Symbol;

            Symbol headsymbol = newlink.ToNode as Symbol;

            if ((tailsymbol.Nodes.Count == headsymbol.Nodes.Count) && (tailsymbol.Nodes[0].Name == headsymbol.Nodes[0].Name))

            {

                // Comparing the symbol's child nodes count and child node type is a simplistic way 

                // to determine whether the two symbols are of the same type. 

                Trace.WriteLine("The two symbols are of the same type.");



                // Use the RemoveNodesCmd to delete the new link

                RemoveNodesCmd removecmd = new RemoveNodesCmd();

                removecmd.Nodes.Add(newlink);

                this.diagram1.Controller.ExecuteCommand(removecmd);

            }

        }

    }

} 

{% endhighlight %}

{% highlight vbnet %}

Private Sub diagram1_ConnectionsChangeComplete(ByVal sender As Object, ByVal evtArgs As Syncfusion.Windows.Forms.Diagram.ConnectionCollectionEventArgs) Handles diagram1.ConnectionsChangeComplete

    If evtArgs.ChangeType = Syncfusion.Windows.Forms.Diagram.CollectionExChangeType.Insert AndAlso Not (evtArgs.Connection Is Nothing) Then

        Dim newconn As Connection = evtArgs.Connection

        Dim newlink As Link = Nothing

        If TypeOf newconn.SourcePort Is LinkPort Then

            newlink = newconn.SourcePort.Container

        End If

        If TypeOf newconn.TargetPort Is LinkPort Then

            newlink = newconn.TargetPort.Container

        End If

        If Not (newlink Is Nothing) AndAlso Not (newlink.FromNode Is Nothing) AndAlso Not (newlink.ToNode Is Nothing) Then

            Trace.WriteLine("A new link was added to the Diagram")

            Dim tailsymbol As Symbol = newlink.FromNode

            Dim headsymbol As Symbol = newlink.ToNode

            If tailsymbol.Nodes.Count = headsymbol.Nodes.Count AndAlso tailsymbol.Nodes(0).Name = headsymbol.Nodes(0).Name Then

                ' Comparing the symbol's child nodes count and child node type is a simplistic way 

                ' to determine whether the two symbols are of the same type. 

                Trace.WriteLine("The two symbols are of the same type.")



                ' Use the RemoveNodesCmd to delete the new link

                Dim removecmd As New RemoveNodesCmd

                removecmd.Nodes.Add(newlink)

                Me.diagram1.Controller.ExecuteCommand(removecmd)

            End If

        End If

    End If

End Sub

{% endhighlight %}

{% endtabs %}
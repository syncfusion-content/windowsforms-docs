---
layout: post
title: How To Serialize the Custom Property Of a Node | Syncfusion®
description: Learn how to serialize custom properties in Essential® Diagram by deriving a custom node class and overriding the GetObjectData() method.
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Serialize the Custom Property Of a Node

Essential® Diagram supports custom serialization. To serialize the custom property, you should derive the Group class and create a custom node. After creating a custom node, you should override the GetObjectData() method and add the custom property in the SerializationInfo. This is illustrated in the below code snippet.

{% tabs %}

{% highlight c# %}

[Serializable()]

public class CustomNode : Group

{

protected CustomNode(SerializationInfo info, StreamingContext context) : base(info, context)

{

this.m_nodeInformation = info.GetString("strDescription");

}

protected override void GetObjectData(SerializationInfo info, StreamingContext context)

{

base.GetObjectData(info, context);



// Additional member variables are serialized here.

info.AddValue("strDescription", this.NodeInformation);

}

}

{% endhighlight %}

{% highlight vbnet %}

&lt;Serializable()&gt;

Public Class CustomNode

Inherits Group

Public Sub New()

End Sub

Protected Sub New(ByVal info As SerializationInfo, ByVal context As StreamingContext)

MyBase.New(info, context)

Me.m_nodeInformation = info.GetString("strDescription")

End Sub

Protected Overrides Sub GetObjectData(ByVal info As SerializationInfo, ByVal context As StreamingContext)

MyBase.GetObjectData(info, context)



' Additional member variables are serialized here.

info.AddValue("strDescription", Me.NodeInformation)

End Sub

End Class

{% endhighlight %}

{% endtabs %}
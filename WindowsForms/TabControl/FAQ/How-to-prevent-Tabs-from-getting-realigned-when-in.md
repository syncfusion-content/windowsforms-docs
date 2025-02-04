---
layout: post
title: Prevent tabs | WindowsForms | Syncfusion®
description: how to prevent tabs from getting realigned when in multiline mode
platform: windowsforms
control: TabsPackage
documentation: ug
---

# How to prevent tabs from getting realigned when in Multiline mode?

We will be making this a property based feature in a future version. For now, derive from our base TabControlExt class and do the following.

This code will not move the selected Tab to the front row when in [Multiline](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_Multiline) mode.

{% tabs %}

{% highlight C# %}



// Custom tabcontrol will prevent tab realignment in Multiline mode.

public class MyTabControlExt : TabControlExt

{

// Plug-in the custom MyMultilineTabPanelRenderer class.

protected override void RendererChanged(TabPanelRenderer rendererNew)

{

if(rendererNew == null

&& this.Multiline)

{

rendererNew = new MyMultilineTabPanelRenderer(this);

}



base.RendererChanged(rendererNew);

}

}

// Custom MyMultilineTabPanelRenderer to prevent tab realignment.

public class MyMultilineTabPanelRenderer : MultilineTabPanelRenderer

{

public MyMultilineTabPanelRenderer(ITabControl parent)

: base(parent)

{

}

protected override void ValidateSelectedTabsPosition()

{

// Don’t call the base class method which will try to move the selected tab

// to the front row.

}

}

{% endhighlight %}

{% highlight VB %}



'Custom tabcontrol will prevent tab realignment in Multiline mode.

Public Class MyTabControlExt

Inherits TabControlExt

'Plug-in the custom MyMultilineTabPanelRenderer class.

Protected Overrides Sub RendererChanged(ByVal rendererNew As TabPanelRenderer)

If rendererNew Is Nothing AndAlso Me.Multiline Then

rendererNew = New MyMultilineTabPanelRenderer(Me)

End If

MyBase.RendererChanged(rendererNew)

End Sub 'RendererChanged

End Class 'MyTabControlExt

'Custom MyMultilineTabPanelRenderer to prevent tab realignment.

Public Class MyMultilineTabPanelRenderer

Inherits MultilineTabPanelRenderer

Public Sub New(ByVal parent As ITabControl)

MyBase.New(parent)

End Sub 'New



Protected Overrides Sub ValidateSelectedTabsPosition()

End Sub 'ValidateSelectedTabsPosition

End Class 'MyMultilineTabPanelRenderer ’ Don’t call the base class method which will try to move the selected tab.


{% endhighlight %}

{% endtabs %}

---
layout: post
title: Render Mode | Windows Forms | Syncfusion®
description: Learn about Rendering mode (Predefined and custom) support in Syncfusion® WinForms ContextMenu (ContextMenuStripEx) control and more details.
platform: windowsforms
control: ContextMenuStripEx
documentation: ug
---

# Render Mode to customize appearance of ContextMenuStrip

Render mode is used to customize the appearance of the ContextMenu either through predefined or custom standards. It also refers to what kind of visual style the ToolStripItems needs to use. The [`RenderMode`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstrip.rendermode?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStrip_RenderMode) property is used to provides different painting styles like:

* Professional
* System
* ManagerRenderMode
* Custom


## Professional

The below code snippet is used to apply "Professional" style renderer.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional

{% endhighlight %}
{% endtabs %}

![Professional](RenderMode_Images/Professional.png)


## System

The below code snippet is used to apply "System" style renderer.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx1.RenderMode = System.Windows.Forms.ToolStripRenderMode.System;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx1.RenderMode = System.Windows.Forms.ToolStripRenderMode.System

{% endhighlight %}
{% endtabs %}

![System](RenderMode_Images/System.png)


## ManagerRenderMode

The below code snippet is used to apply "ManagerRenderMode" style renderer.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx1.RenderMode = System.Windows.Forms.ToolStripRenderMode.ManagerRenderMode;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx1.RenderMode = System.Windows.Forms.ToolStripRenderMode.ManagerRenderMode

{% endhighlight %}
{% endtabs %}

![ManagerRenderMode](RenderMode_Images/ManagerRenderMode.png)


## Custom

The RenderMode property cannot be directly set to **Custom** enumeration. To use a custom ToolStripRenderer, set the [`Renderer`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstrip.renderer?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStrip_Renderer) property directly instead. Here we have set the [`Renderer`]((https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstrip.renderer?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStrip_Renderer)) property to Office12ToolStripRenderer or Office2016ToolStripRenderer class object, which is used to change the appearance of the ContextMenuStripEx control.

In the form load event, add one of the below code to change the appearance.

{% tabs %}
{% highlight C# %}

//Sets Office Black Color
this.contextMenuStripEx1.Renderer = new Office12ToolStripRenderer(new OfficeBlack ());

//Sets Office Blue Color
this.contextMenuStripEx1.Renderer = new Office12ToolStripRenderer(new OfficeBlue ());

//Sets Office Silver Color
this.contextMenuStripEx1.Renderer = new Office12ToolStripRenderer(new Office12ColorTable());

{% endhighlight %}

{% highlight vb %}

'Sets Office Black Color
Me.contextMenuStripEx1.Renderer = New Office12ToolStripRenderer(New OfficeBlack) 

'Sets Office Blue Color
Me.contextMenuStripEx1.Renderer = New Office12ToolStripRenderer(New OfficeBlue)

'Sets Office Silver Color
Me.contextMenuStripEx1.Renderer = New Office12ToolStripRenderer(New Office12ColorTable())

{% endhighlight %}
{% endtabs %}

![Custom](RenderMode_Images/OfficeBlack.png) 

![Custom](RenderMode_Images/OfficeBlue.png) 
  
![Custom](RenderMode_Images/Office12ColorTable.png)

## See also

[How to add an icon in a header of WinForms ContextMenuStripEx using CustomRenderer class](https://support.syncfusion.com/kb/article/10354/how-to-add-an-icon-in-a-header-of-winforms-contextmenustripex)


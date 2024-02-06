---
layout: post
title: Serialize or deserialize the docking state | WindowsForms | Syncfusion
description: Learn here about How to serialize or deserialize the docking state for a docked control on loading the application 
platform: WindowsForms
control: DockingManager
documentation: ug
---


# Serialize or deserialize the docking state for a docked control 

To serialize or deserialize the docking state on loading the application?  follow the below steps.

Before closing the docked/floating control, access the control's parent and cast this to type Syncfusion.Windows.Forms.Tools.DockHost.

{% tabs %}

{% highlight C# %}


Syncfusion.Windows.Forms.Tools.DockHost dockHost = ctrl.Parent as Syncfusion.Windows.Forms.Tools.DockHost; 

{% endhighlight %}

{% highlight VB %}


Dim dockHost As Syncfusion.Windows.Forms.Tools.DockHost = Me.listView1.Parent as Syncfusion.Windows.Forms.Tools.DockHost  

{% endhighlight %}

{% endtabs %}

* Access the DockHost's InternalController and get its current serialization information through the GetSerCurrInfo() method.

{% capture codesnippet1 %}
{% tabs %}

{% highlight C# %}

Syncfusion.Windows.Forms.Tools.DockHostController dockHostController = dockHost.InternalController as Syncfusion.Windows.Forms.Tools.DockHostController; 

{% endhighlight %}


{% highlight VB %}


Dim dockHostController As Syncfusion.Windows.Forms.Tools.DockHostController = dockHost.InternalController as  Syncfusion.Windows.Forms.Tools.DockHostController

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

* This returns an object of type Syncfusion.Windows.Forms.Tools.DockInfo. The DockInfo.DockingStyle member gives the dock position of the control with respect to the host form and the DockInfo.rcDockArea.

{% capture codesnippet2 %}
{% tabs %}

{% highlight C# %}

Syncfusion.Windows.Forms.Tools.DockInfo dockInfo = dockHostController.GetSerCurrentDI(); 

{% endhighlight %}


{% highlight VB %}


Dim dockInfo As Syncfusion.Windows.Forms.Tools.DockInfo = dockHostController.GetSerCurrentDI()

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

* You can serialize this information against the control’s name, and later upon loading, appropriately use either the DockingManager.DockControl() /  FloatControl() method based on the serialized DockingStyle and control's bounds values, to set the control’s dock state.




---
layout: post
title: How to serialize or deserialize the docking state for a docked control on loading the application
description: How to serialize or deserialize the docking state for a docked control on loading the application
platform: WindowsForms
control: Control Name undefined
documentation: ug
---


# How to serialize or deserialize the docking state for a docked control on loading the application?

To serialize or deserialize the docking state, follow the below steps.

Before closing the docked / floating control, access the control's parent and cast this to type Syncfusion.Windows.Forms.Tools.DockHost. 



{% highlight C# %}


Syncfusion.Windows.Forms.Tools.DockHost dhost = ctrl.Parent as Syncfusion.Windows.Forms.Tools.DockHost; 
{% endhighlight %}



{% highlight vbnet %}



Dim dhost As Syncfusion.Windows.Forms.Tools.DockHost = Me.listView1.Parent as Syncfusion.Windows.Forms.Tools.DockHost  
{% endhighlight %}

* Access the DockHost's InternalController and get its current serialization information through the GetSerCurrIndo() method.


{% highlight C# %}



Syncfusion.Windows.Forms.Tools.DockHostController dhc = dhost.InternalController as Syncfusion.Windows.Forms.Tools.DockHostController; 
{% endhighlight %}




{% highlight vbnet %}



Dim dhc As Syncfusion.Windows.Forms.Tools.DockHostController = dhost.InternalController as  Syncfusion.Windows.Forms.Tools.DockHostController

{% endhighlight %}

* This returns an object of type Syncfusion.Windows.Forms.Tools.DockInfo. The DockInfo.DockingStyle member gives the dock position of the control with respect to the host form and the DockInfo.rcDockArea 


{% highlight C# %}


Syncfusion.Windows.Forms.Tools.DockInfo di = dhc.GetSerCurrentDI(); 
{% endhighlight %}


{% highlight vbnet %}




Dim di As Syncfusion.Windows.Forms.Tools.DockInfo = dhc.GetSerCurrentDI()
{% endhighlight %}


* You can serialize this information against the control’s name, and later upon loading, appropriately use either the DockingManager.DockControl() /  FloatControl() method based on the serialized DockingStyle/rcbounds values to set the control’s dock state. 




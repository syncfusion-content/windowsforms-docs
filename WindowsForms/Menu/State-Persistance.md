---
layout: post
title: State Persistence in Menus | Windows Forms | Syncfusion
description: Serialization in menu control
platform: WindowsForms
control: MainFrameBarManager 
documentation: ug
---

# State Persistence

The menu control supports serialization persisting the state of the toolbars and menu items state whenever the application is being used. In this topic the serialization of menu control is discussed.

## Enabling state persistence

The menu control by default, enables the serialization and state persistence of the menu items. This can be done via the [`AutoLoadToolBarPositions`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.MainFrameBarManager~AutoLoadToolBarPositions.html) and [`AutoPersistCustomization`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.MainFrameBarManager~AutoLoadToolBarPositions.html). This can be done either via designer **Smart tag** options or through code.

The below image shows the serialization is being enabled via the designer

![Enabling Serialization via designer](State-Persistance-images/enablingStatePersistence_Designer.png)

The below code snippet shows the enabling of toolbar state persistence and serialization of menu item state.

{% tabs %}

{% highlight C# %}

this.mainFrameBarManager1.AutoLoadToolBarPositions = true;
this.mainFrameBarManager1.AutoPersistCustomization = true;

{% endhighlight %}

{% highlight VB %}

Me.mainFrameBarManager1.AutoLoadToolBarPositions = True
Me.mainFrameBarManager1.AutoPersistCustomization = True

{% endhighlight %}

{% endtabs %}

### Sample Location

The serialization feature is illustrated in this-example.
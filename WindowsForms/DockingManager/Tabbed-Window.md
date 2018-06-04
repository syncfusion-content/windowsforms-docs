---
layout: post
title: Tabbed-Window | WindowsForms | Syncfusion
description: This section explains the TabbedWindow functionality in DockingManager
platform: WindowsForms
control: DockingManager 
documentation: ug
---

## Tabbed to another window programmatically

DockingManager provides an function [DockControl](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockControl.html) that helps to dock a panel at the required side using [DockingStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingStyle.html) argument.

DockingStyle’s Tabbed option is used to tab a panel with another panel. The tabbing windows need to be aware of the parent control’s name. Set `Output` window parent as `SolutionExplorer` to tab it on the `SolutionExplorer` window.

{% tabs %}

{% highlight C# %}

// To set the DockingStyle for the docked controls
            
this.dockingManager1.DockControl(this.panel4, panel1, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200);

this.dockingManager1.DockControl(this.panel3, panel1, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200);

this.dockingManager1.DockControl(this.panel2, panel1, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200);

{% endhighlight %}


{% highlight VB %}

'To set the DockingStyle for the docked controls

Me.dockingManager1.DockControl(Me.panel4, panel1, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200)

Me.dockingManager1.DockControl(Me.panel3, panel1, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200)

Me.dockingManager1.DockControl(Me.panel2, panel1, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200)

{% endhighlight %}

{% endtabs %}

![](Tabbed_Window_images/Tabbed_Window_img6.png)

## Tabbed to another window by user interaction

Child window can be arranged as Tabbed windows by using either of the following ways.

* At Design Time
* At Run Time

### Tabbed at run time

DockingManager helps you in dragging and dropping the docked controls at run time, using different DragProviderStyle. This style displays a prediction Bands, which lets you decide whether you can drop the control in that location.

![](Tabbed_Window_images/Tabbed_Window_img1.png)

### Tabbed at design time

The docked controls can be tabbed in the designer, by just dragging and dropping into one another. DockingManager helps you in doing this using different `DragProviderStyle`.

![](Tabbed_Window_images/Tabbed_Window_img8.png)

## Tab alignments

The tabs of the Docked window are placed at the bottom, by default. To place the tabs of the docked window at different sides set the property [DockTabAlignment](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockTabAlignment.html) with desired values such as Top, Bottom, Left and Right.

{% tabs %}

{% highlight C# %}

//To set the Tab alignment as Right.

this.dockingManager1.DockTabAlignment = Syncfusion.Windows.Forms.Tools.DockTabAlignmentStyle.Right;

{% endhighlight %}


{% highlight VB %}

'To set the Tab alignment as Right.

Me.dockingManager1.DockTabAlignment = Syncfusion.Windows.Forms.Tools.DockTabAlignmentStyle.Right;
 
{% endhighlight %}

{% endtabs %}

* Setting DockTabAlignment as Bottom.

![](Tabbed_Window_images/Tabbed_Window_img5.png)


* Setting DockTabAlignment as Left.

![](Tabbed_Window_images/Tabbed_Window_img3.png)


* Setting DockTabAlignment as Right.

![](Tabbed_Window_images/Tabbed_Window_img2.png)


* Setting DockTabAlignment as Top.

![](Tabbed_Window_images/Tabbed_Window_img4.png)

## Prevent tabbing

User can restrict the specific [DockAbility](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockAbility.html) of child window when it moved to the client area in DockingManager. It can be achieved by [SetDockAbility](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~SetDockAbility.html) function. Here we have restricted the tabbed, left, right, bottom ability.  

{% tabs %}

{% highlight C# %}

this.dockingManager1.SetDockAbility(panel1, "Top");

{% endhighlight %}


{% highlight VB %}

this.dockingManager1.SetDockAbility(panel1, "Top");

{% endhighlight %}

{% endtabs %}

![](Float_Window_images/Float_Window_img2.png)

## Tab reordering

DockingManager allows to reorder the tab by select and drag to the desired index in `DockTabControl`. Tabs re-ordering behavior can be enabled or disabled by [AllowTabsMoving](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~AllowTabsMoving.html) property of DockingManager. 

{% tabs %}

{% highlight C# %}

// Prevent the tabbed controls from moving

this.dockingManager1.AllowTabsMoving = true;

{% endhighlight %}

{% highlight VB %}

'Prevent the tabbed controls from moving

Me.dockingManager1.AllowTabsMoving = True

{% endhighlight %}

{% endtabs %}

### Restrict reorder tabs

To prevent the tab re-order within the tab group, set [AllowTabsMoving](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~AllowTabsMoving.html) value as `false`. 

## Show / hide scroll buttons in tab panel

When the Dock Tabs overflow onto the tab panel, ScrollButton is added to the tab panel. This scroll button can be enabled or disabled by using the [ShowDockTabScrollButton](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ShowDockTabScrollButton.html) property.

{% tabs %}

{% highlight C# %}

//Enable scroll button on dock tab panel.

this.dockingManager1.ShowDockTabScrollButton = true;

{% endhighlight %}

{% highlight VB %}

'Enable scroll button on dock tab panel.

Me.dockingManager1.ShowDockTabScrollButton = true

{% endhighlight %}

{% endtabs %}

![](Tabbed_Window_images/Tabbed_Window_img7.png)

## Change tab index by programmatically

By using [SetTabPosition](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~SetTabPosition.html) function of DockingManager, we can set tab position for a control which is passed as its argument.

{% tabs %}

{% highlight C# %}

//Set the tab position for particular control.

this.dockingManager1.SetTabPosition(panel1, 2);

{% endhighlight %}

{% highlight VB %}

'Set the tab position for particular control.

Me.dockingManager1.SetTabPosition(Panel1, 2)

{% endhighlight %}

{% endtabs %}

### Tab index

By using [GetTabPosition](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~GetTabPosition.html) function of DockingManager, we can get tab position for a control which is passed as its argument.

{% tabs %}

{% highlight C# %}

/Getting the tab position

this.dockingManager1.GetTabPosition(panel1);

{% endhighlight %}

{% highlight VB %}

'Getting the tab position

Me.dockingManager1.GetTabPosition(panel1)

{% endhighlight %}

{% endtabs %}

## Identify the tabbed state for control

The DockingManager [IsTabbed](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~IsTabbed.html) function which returns `true` if the control is in tabbed state and `false` if the control is in other states.

{% tabs %}

{% highlight C# %}

this.dockingManager1.IsTabbed(this.panel1);

{% endhighlight %}

{% highlight VB %}

Me.DockingManager1.IsTabbed(this.panel1)

{% endhighlight %}

{% endtabs %}

## Check two controls in same tab group

The DockingManager [IsSameTabbedGroup](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~IsSameTabbedGroup.html) function which is used to determine whether two tabbed controls are belongs to the same tab group or not.

{% tabs %}

{% highlight C# %}

this.dockingManager1.IsSameTabbedGroup(this.panel1, this.panel2);

{% endhighlight %}

{% highlight VB %}

Me.DockingManager1.IsSameTabbedGroup(this.panel1, this.panel2)

{% endhighlight %}

{% endtabs %}

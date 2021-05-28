---
layout: post
title: Detachable Command bar in Menus | Windows Forms | Syncfusion
description: Learn about the Command bar in Syncfusion Windows Forms Menu control, its elements and more details.
platform: WindowsForms
control: MainFrameBarManager 
documentation: ug
---

# Detachable Command Bar

The [`CommandBar`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CommandBar.html) instance can be added to the menu bar and can be set to detach from the parent menu bar.

## Adding command bar via designer

The command bar can be added via the `DetachedCommandBars` selection from the smart tags options. The below image shows the command bar is added to the menu via the designer settings.

![Command bar added to the bar](Detachable-Commandbar-images/adding_CommandBar_Designer.png)

![Form loaded with command bar](Detachable-CommandBar-images/form_with_commandbar.png)

## Adding command bar via code

The command bar instance should be created with required settings and added to the `DetachedCommandBars` collection property. The below code snippet shows the command bar is added to the menu control with top docked position.

{% tabs %}

{% highlight C# %}

this.commandBar1 = new Syncfusion.Windows.Forms.Tools.CommandBar();
this.commandBar1.DockState = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Top;
this.commandBar1.Name = "commandBar1";
this.commandbar1.Text = "Command bar1";

this.mainFrameBarManager1.DetachedCommandBars.Add(this.commandBar1);

{% endhighlight %}

{% highlight VB %}

Dim commandBar1 as New Syncfusion.Windows.Forms.Tools.CommandBar()
Me.commandBar1.DockState = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Top
Me.commandBar1.Name = "commandBar1"
Me.commandbar1.Text = "Command bar1"

Me.mainFrameBarManager1.DetachedCommandBars.Add(Me.commandBar1);

{% endhighlight %}

{% endtabs %}

![Form loaded with command bar](Detachable-CommandBar-images/form_with_commandbar.png)

{% seealso %}

[Hosting controls in command bar](https://help.syncfusion.com/windowsforms/commandbar/hosting-controls)

{% endseealso %}

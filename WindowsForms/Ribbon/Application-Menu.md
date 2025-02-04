---
layout: post
title: Application Menu in Windows Forms Ribbon control | Syncfusion®
description: Learn about Application Menu support in Syncfusion® Windows Forms Ribbon (RibbonControlAdv) control and more details.
platform: windowsforms
control: RibbonControlAdv 
documentation: ug
---

# Application Menu in Windows Forms Ribbon (RibbonControlAdv)

The RibbonControlAdv has the office menu button at the top left corner of the form. Controls can be added to the panels of the office menu button dropdown through designer without a single piece of code.

## Open ApplicationMenu

When the OfficeMenuButton is clicked, Application will be displayed. This dropdown can be customized through designer as well as through code.
RibbonControlAdv lets you add customized ToolStrip items in the OfficeMenu button dropdown with the help of the menu panels.

The panels are:

*	Aux Panel
*	Main Panel
*	System Panel

![Open the application menu in WF Ribbon](Application_Menu_Images/Application-Menu_img1.jpg)

### Adding Items to Aux panel

Items to Aux panel can be added through Items property which invokes Item Collection Editor and items can be added to the panel.

![Add menu item to panel in WF Ribbon](Application_Menu_Images/Application-Menu_img2.jpg)



![Show the item collection editor in WF Ribbon](Application_Menu_Images/Application-Menu_img3.jpg)

### Adding Items to Main Panel

Items to Main panel can be added through Items property which invokes Item Collection Editor and items can be added to the panel.(As explained in AUX panel)

### System Panel

System panel will be located below the Aux and Main panel and items can be added to it through the items property which invokes Items Collection Editor and items can be added to it. (As explained in AUX panel)

## Restrict Application Menu Opening

To restrict application menu from opening, set the ribbon property [MenuButtonEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_MenuButtonEnabled) as `false`.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.MenuButtonEnabled = false;

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.MenuButtonEnabled = False

{% endhighlight %}

{% endtabs %}

## Minimize the menu bar panel

You can hide or minimize the menu bar panel by setting the [MinimizePanel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_MinimizePanel) property to `true` in the RibbonControlAdv. The default value is `false`.

{% tabs %}

{% highlight C# %}

this.ribbonControlAdv1.MinimizePanel = true;

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.MinimizePanel = True

{% endhighlight %}

{% endtabs %}

When setting the `MinimizePanel` property as `true`, the image will be displayed as follows,

![Minimize the menu bar panel in WF Ribbon](Application_Menu_Images/wf-ribbon-minimizemenubar.png)

When setting the `MinimizePanel` property as `false`, the image will be displayed as follows,

![Maximize the menu bar panel in WF Ribbon](Application_Menu_Images/wf-ribbon-maximizemenubar.png)

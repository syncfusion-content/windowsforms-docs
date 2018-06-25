---
layout: post
title: Application-Menu | WindowsForms | Syncfusion
description: application menu
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Application Menu

The RibbonControlAdv has the office menu button at the top left corner of the form. Controls can be added to the panels of the office menu button dropdown through designer without a single piece of code.

## Open ApplicationMenu

When the OfficeMenuButton is clicked, Application will be displayed. This dropdown can be customized through designer as well as through code.
RibbonControlAdv lets you add customized ToolStrip items in the OfficeMenu button dropdown with the help of the menu panels.

The panels are:

*	Aux Panel
*	Main Panel
*	System Panel

![](Application_Menu_Images/Application-Menu_img1.jpg)

### Adding Items to Aux panel

Items to Aux panel can be added through Items property which invokes Item Collection Editor and items can be added to the panel.

![](Application_Menu_Images/Application-Menu_img2.jpg)



![](Application_Menu_Images/Application-Menu_img3.jpg)

### Adding Items to Main Panel

Items to Main panel can be added through Items property which invokes Item Collection Editor and items can be added to the panel.(As explained in AUX panel)

### System Panel

System panel will be located below the Aux and Main panel and items can be added to it through the items property which invokes Items Collection Editor and items can be added to it. (As explained in AUX panel)

## Restrict Application Menu Opening

To restrict application menu from opening, set the ribbon property `MenuButtonEnabled` as false.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.MenuButtonEnabled = false;

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.MenuButtonEnabled = False

{% endhighlight %}

{% endtabs %}
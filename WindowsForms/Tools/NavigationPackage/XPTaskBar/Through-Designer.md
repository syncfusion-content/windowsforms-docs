---
layout: post
title: Through Designer
description: overview
platform: windowsforms
control: Navigation Package
documentation: ug
---
## Through Designer

In this tutorial, we will create a simple XPTaskBar.

1. Add an XPTaskBar control from the toolbox onto your form and a new instance will be placed on your form. Dock the control to 
the left of the form. Set the DockPadding.All property to '5' on the XPTaskBar so that there will be some space between the 
XPTaskBar Box children and the XPTaskBar. 

 ![](Overview_images/Overview_img93.jpeg) 
Figure 995: XPTaskBar in Toolbox



 ![](Overview_images/Overview_img94.jpeg)
Figure 996: DockPadding property set to "5"

2. To add an XPTaskBar Box, right click on the XPTaskBar control and select the Add Task Box verb. This will add an empty 
XPTaskBar Box instance. You can change it's Header Text property to change the text of the header.

3. You can also add an XPTaskBar Box using the Add Task Box command in the Property Grid. 

 ![](Overview_images/Overview_img95.jpeg) 
Figure 997: Adding XPTaskBar Box through Verbs

![](Overview_images/Overview_img96.jpeg) 
Figure 998: Adding XPTaskBar Box through Property Grid

4. Select the newly added XPTaskBar Box and open it's XPTaskBarItem Collection Editor. There you can add one or more XPTaskBar 
Items specifying the text, image (using the ImageIndex property), etc. for each item. To distinguish one item from the other, 
you can specify a unique Tag property for each item.

{ ![](Overview_images/Overview_img97.jpeg) 
Figure 999: "XPTaskBarBox Items" Property Displayed in the Properties Window

 ![](Overview_images/Overview_img98.jpeg) 
Figure 1000: XPTaskBarItem Collection Editor

![](Overview_images/Overview_img99.jpeg) 
Figure 1001: Adding XPTaskBar Items using Verbs

 ![](Overview_images/Overview_img100.jpeg) 


> _Note: The XPTaskBar Boxes can also host a Panel control within it. During design time, users can simply drag and drop the panel on the box. In code, users can do this  by adding the panel to the Controls collection of XPTaskBarBox. The panel's width will be resized to fit, whereas it's height will be based on the PreferredChildPanelHeight property setting._ 

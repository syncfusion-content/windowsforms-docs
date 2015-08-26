---
layout: post
title: Menus Framework
description: menus framework
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Menus Framework

This section will demonstrate the addition and customization of detached CommandBars and ControlBars.

## Detached CommandBar

The XP Menus framework provides the flexibility to add detached toolbars through CommandBar that can host any .NET control. These toolbars are detached from the framework in the sense that they cannot participate in user customization. Otherwise, they are seamless in look-and-feel. 

### Through Designer

Right click on the MainFrameBarManager in the designer and choose the "Add Detached CommandBar" option, to add a detached commandbar. 

![](Overview_images/Overview_img102.jpeg) 



> Note: Command Bar can also be added by clicking the command in the properties window.

![](Overview_images/Overview_img104.jpeg) 



The following screen shot shows the CommandBar in the designer.

![](Overview_images/Overview_img105.jpeg) 



* Drag and drop XPToolBar control on to the CommandBar and add bar items to the XPToolBar through BarItem Collection Editor. 
* The following screen shot shows the XPToolBar with bar items hosted on CommandBar. This command Bar can be hosted to any target within the form by just dragging and dropping.

![](Overview_images/Overview_img106.jpeg) 



To associate a bar with the Command Bar use the below code snippet.





{% highlight c# %}

//Associate the created Bar with CommandBar.

CommandBar cmd = this.mainFrameBarManager1.GetBarControl(this.bar1);







'Associate the created Bar with CommandBar.

Private cmd As CommandBar = Me.mainFrameBarManager1.GetBarControl(Me.bar1)



XPMenus lets you add custom controls to the CommandBar for example TrackBarEx by simple drag and drop.





//Adding the control to CommandBar

this.commandBar2.Controls.Add(this.trackBarEx1);







'Adding the control to CommandBar

Me.commandBar2.Controls.Add(Me.trackBarEx1)

{% endhighlight  %}

![](Overview_images/Overview_img107.jpeg) 



See Also

CommandBar Properties

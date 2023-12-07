---
layout: post
title: Splitter Components in Tab Splitter Container | Syncfusion
description: Learn about Splitter Components support in Syncfusion Windows Forms Tab Splitter Container control and more details.
platform: WindowsForms
control: TabSplitterContainer 
documentation: ug
---

# Splitter Components in Windows Forms Tab Splitter Container

The splitter in the TabSplitterContainer control has in-built options for changing the orientation of the splitter and also to collapse or expand the splitter panes.

![Splitter components](Splitter-Components_images/Splitter-Components_img1.jpeg)



* Primary Page - We can add primary pages using [PrimaryPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabSplitterContainer.html#Syncfusion_Windows_Forms_Tools_TabSplitterContainer_PrimaryPages) property. It invokes TabSplitterPage Collection Editor and lets you add primary pages.
* Secondary Page - We can add secondary pages using [SecondaryPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabSplitterContainer.html#Syncfusion_Windows_Forms_Tools_TabSplitterContainer_SecondaryPages) property. It invokes TabSplitterPage Collection Editor and lets you add secondary pages.
* Swap Button - This button lets you to swap between the primary and secondary pages.
* Vertical Orientation - Sets the orientation of the splitter to be vertical.
* Horizontal Orientation - Sets the orientation of the splitter to be horizontal.
* Expand/Collapse Button - Clicking this button can collapse the secondary pane and place at the bottom of the control. Clicking this button again will expand the pane and place in its original position.

## SplitterPage

The properties which customizes the Splitter page are as follows.

* [BorderStyle](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.panel.borderstyle?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Panel_BorderStyle)
* [BackgroundImage](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.backgroundimage?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_BackgroundImage)
* [BackgroundImageLayout](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.backgroundimagelayout?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_BackgroundImageLayout)
* [Image](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabSplitterPage.html#Syncfusion_Windows_Forms_Tools_TabSplitterPage_Image)
* [ImageTransparencyColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabSplitterPage.html#Syncfusion_Windows_Forms_Tools_TabSplitterPage_ImageTransparentColor)
* [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabSplitterPage.html#Syncfusion_Windows_Forms_Tools_TabSplitterPage_Text)
* [Tooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabSplitterPage.html#Syncfusion_Windows_Forms_Tools_TabSplitterPage_ToolTip)
* [Visible](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.visible?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_Visible)

{% tabs %}

{% highlight C# %}


this.tabSplitterPage1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

this.tabSplitterPage1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("tabSplitterPage1.BackgroundImage")));

this.tabSplitterPage1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;

this.tabSplitterPage1.Image = ((System.Drawing.Image)(resources.GetObject("tabSplitterPage1.Image")));

this.tabSplitterPage1.Text = "Designer";

this.tabSplitterPage1.Tooltip = "Designer";

this.tabSplitterPage1.Visible = true;

{% endhighlight %}

{% highlight VB %}



Me.tabSplitterPage1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

Me.tabSplitterPage1.BackgroundImage = DirectCast((resources.GetObject("tabSplitterPage1.BackgroundImage")), System.Drawing.Image) 

Me.tabSplitterPage1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center 

Me.tabSplitterPage1.Image = DirectCast((resources.GetObject("tabSplitterPage1.Image")), System.Drawing.Image) 

Me.tabSplitterPage1.Text = "Designer" 

Me.tabSplitterPage1.Tooltip = "Designer" 

Me.tabSplitterPage1.Visible = True 

{% endhighlight %}

{% endtabs %}

![Splitter page](Splitter-Components_images/Splitter-Components_img2.jpeg)




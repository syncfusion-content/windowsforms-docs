---
layout: post
title: Tab-Groups | WindowsForms | Syncfusion
description: tab groups
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Tab Groups

RibbonControlAdv allows to create TabGroups using the **TabGroups** property available for the RibbonControlAdv.

## Creating TabGroup

### Through Designer

* Click the TabGroup property of the RibbonControlAdv, TabGroup collection editor is opened. Add the tabgroup using the editor

 ![](Tab-Groups_images/Tab-Group_img1.jpeg)
 
* Now create a ToolStripTabItem using the smart tag of the Ribbon.

* Click the TabGroup property in the ToolStripTabItem and select the tabgroup from the available list.

   ![](Tab-Groups_images/Tab-Group_img2.jpeg)

* This will display the tab items in the RibbonControlAdv as shown in the image below.

   ![](Tab-Groups_images/Tab-Group_img3.jpg)

### Through Code

{% highlight c# %}

this.ribbonControlAdv1.TabGroups.Add(toolStripTabGroup3);

Syncfusion.Windows.Forms.Tools.ToolStripTabGroup toolStripTabGroup3 = new Syncfusion.Windows.Forms.Tools.ToolStripTabGroup();

this.ribbonControlAdv1.TabGroups.Add(toolStripTabGroup3);

this.ribbonControlAdv1.TabGroups.SetTabGroup(pageLayoutTabItem, toolStripTabGroup1);

{% endhighlight %}

{% highlight vbnet %}

Me.ribbonControlAdv1.TabGroups.Add(toolStripTabGroup3)

Dim toolStripTabGroup3 As Syncfusion.Windows.Forms.Tools.ToolStripTabGroup = New Syncfusion.Windows.Forms.Tools.ToolStripTabGroup

Me.ribbonControlAdv1.TabGroups.Add(toolStripTabGroup3)

Me.ribbonControlAdv1.TabGroups.SetTabGroup(pageLayoutTabItem, toolStripTabGroup1)

{% endhighlight %}

## Customization

Using the Color property, the color for the tabs can be set. Text for the tabs can be specified through Name property and the tabs can be shown or hidden using Visible property.

Programmatically these properties can be set using the below code snippets.

{% highlight c# %}

toolStripTabGroup3.Color = System.Drawing.Color.DarkBlue;

toolStripTabGroup3.Name = "New Group";

toolStripTabGroup3.Visible = true;


{% endhighlight %}

{% highlight vbnet %}

toolStripTabGroup3.Color = System.Drawing.Color.DarkBlue

toolStripTabGroup3.Name = "New Group"

toolStripTabGroup3.Visible = True

{% endhighlight %}
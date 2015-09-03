---
layout: post
title: Ribbon-Merging
description: ribbon merging
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Ribbon Merging

RibbonControlAdv allows merging the RibbonPanel in a child form to the RibbonPanel in the parent form without a single line of code.

To merge the RibbonPanel in the ChildForm with the RibbonPanel in the parent form, follow the below given steps.

### Through Designer

In a Ribbonform, add a RibbonControlAdv control and the required ToolStripTabItems and the ToolStripEx items.

From the ToolBox, add a RibbonPanelMergeContainer to the ChildForm. ToolStripEx can be added into this by right Clicking on it. 

![](Ribbon-Merging_images/Ribbon-Merging_img1.jpeg)



Now add this ChildForm to the RibbonForm that is the MDIParent of the ChildForm in the default manner.

{% highlight c# %}

ChildForm frm = new ChildForm(); 

frm.MdiParent = this; 

frm.Show();

{% endhighlight %}

{% highlight vbnet %}

Dim frm As ChildForm = New ChildForm()

frm.MdiParent = Me

frm.Show()

{% endhighlight %}

N> The form's IsMDIContainer property must be set as true. Also the MDIParent Ribbonform should host a RibbonControlAdv to get the ChildForm's panels to be merged.

![](Ribbon-Merging_images/Ribbon-Merging_img3.jpeg)



Run the sample to view the ChildForm and the RibbonPanel merged with the RibbonControlAdv in the ParentForm.

![](Ribbon-Merging_images/Ribbon-Merging_img4.jpeg) 

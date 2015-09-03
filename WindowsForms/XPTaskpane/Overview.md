---
layout: post
title: XPTaskPane
description: xptaskpane
platform: WindowsForms
control: Wizard Package 
documentation: ug
---

# Overview

The XPTaskPane is a container control that can host a number of XP TaskPage, which the user can browse using a dropdown menu and the arrow buttons in taskpane's header portion. This resembles the taskpane in Office XP 2002. 

The XPTaskPane control was inspired by the Office XP taskpane feature. The control internally uses a CardLayout to show one page at a time. The header panel allows the user to select one page at a time. The control comes with complete design-time support.

![](Wizard-Package_images/Wizard-Package_img47.jpeg)



### Features

This section covers the features of XPTaskPane control.

* Complete design time support - XPTaskPane allows the user to easily design the XPTaskPages and browse using a drop-down menu and the arrow button in task pane's header portion.
* Customizable user interface properties - XPTaskPane creates child controls representing the different segments of the XPTaskPane and also exposes them in the designer to let users customize it.
* Add / Remove pages - XPTaskPages can be added or removed either through verbs or through TaskPages property settings.
* Navigation - XPTaskPane allows the user to navigate through pages at design-time by selecting Previous page and Next page verbs or using arrow keys in the XP TaskPage Collection Editor.
* Page Sequencing - XPTaskPane allows the user to reorder the pages through 'Bring to front' and 'Send to back' verbs or by using XP TaskPage Collection Editor.
* Visual styles - XPTaskPane supports visual styles Office XP and Office 2007 with all three color schemes that defines the look and feel of the application.
* Custom Colors can be applied for XPTaskPane control. See Visual Styles topic.

![](Wizard-Package_images/Wizard-Package_img48.jpeg)



## XPTaskPane

Segments of an XPTaskPane Control

* The Header of the XPTaskPane contains the Header Label representing the title of each page.
* The HeaderLeftToolbar represents the toolbar items placed on top left corner of the task pane header. It has Left and Right navigating button items which can be accessed using HeaderLeftToolbar.Items[0] and HeaderLeftToolbar.Items[1] respectively.
* The HeaderRightToolbar represents the toolbar items placed on top right corner of the task pane header. It has DropDownMenu and Close button items which can be accessed using HeaderRightToolbar.Items[0] and HeaderRightToolbar.Items[1] respectively.
* The PageContainer of the XPTaskPane hosts the XPTaskPages.



![](Wizard-Package_images/Wizard-Package_img49.jpeg)



## Creating a Simple XPTaskPane

This section demonstrates how to create a simple XPTaskPane.

![](Wizard-Package_images/Wizard-Package_img50.jpeg)



* Add the XPTaskPane control to your empty form in the designer and set its Dock property to right. 

![](Wizard-Package_images/Wizard-Package_img51.jpeg)



* Add pages to the TaskPane using: "Add Page" option in the smart tag.

![](Wizard-Package_images/Wizard-Package_img52.jpeg)



* Add Page option in context menu of the Header.

![](Wizard-Package_images/Wizard-Package_img53.jpeg)



* "Add Page" command in Property grid.
* XPTaskPage Collection Editor which can be opened by accessing TaskPages property of the control. You can use Remove page option to remove a page.

![](Wizard-Package_images/Wizard-Package_img54.jpeg)



![](Wizard-Package_images/Wizard-Package_img55.jpeg)



* The pages can be added programmatically as follows.

{% highlight c# %}

this.xpTaskPane1.TaskPages = new Syncfusion.Windows.Forms.Tools.XPTaskPage[] {this.xpTaskPage1,this.xpTaskPage2, this.xpTaskPage3};

{% endhighlight %}

{% highlight vbnet %}

Me.xpTaskPane1.TaskPages = New Syncfusion.Windows.Forms.Tools.XPTaskPage() {Me.xpTaskPage1,Me.xpTaskPage2, Me.xpTaskPage3}

{% endhighlight %}

* XPTaskPane control has properties which controls the appearance and behavior of the Task pane sections. You can set Header text for individual pages using XPTaskPage1.Title property of the task page.

{% highlight c# %}

this.xpTaskPage1.Title = "Document";

{% endhighlight %}

{% highlight vbnet %}

Me.xpTaskPage1.Title = "Document"

{% endhighlight %}

* Change the LayoutName property of a task page to a custom name. This name can be used in the SelectedPage property of the task pane to refer to a particular page. See XPTaskPage topic.
* Add one or more controls to the task page. 



![](Wizard-Package_images/Wizard-Package_img56.jpeg)



* Invoke the Add Page verb again in the task pane to add more pages. Repeat the steps above to customize the newly added tab page.



---
layout: post
title: Creating-a-Simple-XPTaskPane | Windows Forms | Syncfusion
description: creating a simple xptaskpane
platform: windowsforms
control: XPTaskPane
documentation: ug
---

# Creating a Simple XPTaskPane

This section demonstrates how to create a simple XPTaskPane.

![](Creating-a-Simple-XPTaskPane_images/Creating-a-Simple-XPTaskPane_img1.jpeg)



* Add the XPTaskPane control to your empty form in the designer and set its Dock property to right. 

![](Creating-a-Simple-XPTaskPane_images/Creating-a-Simple-XPTaskPane_img2.jpeg)



* Add pages to the TaskPane using: "Add Page" option in the smart tag.

![](Creating-a-Simple-XPTaskPane_images/Creating-a-Simple-XPTaskPane_img3.jpeg)



* Add Page option in context menu of the Header.

![](Creating-a-Simple-XPTaskPane_images/Creating-a-Simple-XPTaskPane_img4.jpeg)



* "Add Page" command in Property grid.
* XPTaskPage Collection Editor which can be opened by accessing TaskPages property of the control. You can use Remove page option to remove a page.

![](Creating-a-Simple-XPTaskPane_images/Creating-a-Simple-XPTaskPane_img5.jpeg)



![](Creating-a-Simple-XPTaskPane_images/Creating-a-Simple-XPTaskPane_img6.jpeg)



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



![](Creating-a-Simple-XPTaskPane_images/Creating-a-Simple-XPTaskPane_img7.jpeg)



* Invoke the Add Page verb again in the task pane to add more pages. Repeat the steps above to customize the newly added tab page.



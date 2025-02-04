---
layout: post
title: Reordering-XPTaskPage in Windows Forms xptaskpane control | Syncfusion®
description: Learn about Reordering-XPTaskPage support in Syncfusion® Windows Forms xptaskpane (XPTaskPane) control and more details.
platform: windowsforms
control: XPTaskPane
documentation: ug
---

# Reordering-XPTaskPage in Windows Forms xp task pane (XPTaskPane)

When the end user adds a page to the XPTaskPane control, the order of the page is decided, as the page is added. They can be reordered using any one of the below methods in the designer.

* Through XPTaskPage Collection Editor.

![XPTaskPane_img4](XPTaskPane-Control_images/XPTaskPane_img4.jpeg)



* Select a page in the designer and choose the 'Bring To Front' or 'Send To Back' verb which will move the page to the beginning of the collection or to the end of the collection, respectively.

![XPTaskPane_img5](XPTaskPane-Control_images/XPTaskPane_img5.jpeg)



## Going to next page or previous page

* Right-click a page in the designer and choose the 'Previous Page' or 'Next Page' verb which will show you the page, which is before the current page or the page which is after the current page. These options can also be accessed through smart tag and property grid commands.

![XPTaskPane_img6](XPTaskPane-Control_images/XPTaskPane_img6.jpeg)



## Page order at RunTime

XPTaskPage allows you to set the next or the previous page to the currently selected page through the NextPage and PreviousPage properties.

Property table

<table>
<tr>
<th>
XPTaskPage property</th><th>
Description</th></tr>
<tr>
<td>
NextPage</td><td>
It sets the next page for XP TaskPane.</td></tr>
<tr>
<td>
PreviousPage</td><td>
It sets the previous page for XP TaskPane.</td></tr>
</table>


N> The TaskPane follows this order at run time.

{% tabs %}

{% highlight C# %}



this.xpTaskPage2.NextPage = this.xpTaskPage3;

this.xpTaskPage2.PreviousPage = this.xpTaskPage1;

{% endhighlight %}

{% highlight VB %}



Me.xpTaskPage2.NextPage = Me.xpTaskPage3

Me.xpTaskPage2.PreviousPage = Me.xpTaskPage1

{% endhighlight %}

{% endtabs %}

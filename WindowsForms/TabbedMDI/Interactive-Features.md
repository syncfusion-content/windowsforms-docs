---
layout: post
title: Interactive-Features | Windows Forms | Syncfusion
description: interactive features
platform: windowsforms
control: TabbedMDIPackage 
documentation: ug
---

# Interactive Features

This section discusses the Interactive Features of TabControlAdv.

It includes the below topics.

## Tooltips

Tooltip can be enabled for child windows or tabs using the below code snippet, where doc is the new child form that is created. 

The GetTooltip method is used to set the Tooltips for the tabs.

_Table_ _857_: Methods Table

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
GetTooltip</td><td>
Gets the tooltips for the tabs associated with a form.{{ '_mdiChild_' | markdownify }} - indicates the MDIChild form to which the tooltip should be added.{{ '_tooltip_' | markdownify }} - indicates that the tooltip to be added is of type string.</td></tr>
<tr>
<td>
SetTooltip</td><td>
Sets the tooltips for the tabs associated with a form.</td></tr>
</table>


{% highlight c# %}



this.TabbedMDIManager.GetTooltip(doc, "Tooltip for " + doc.Text);

{% endhighlight %}

{% highlight vbnet %}



Me.TabbedMDIManager.GetTooltip(doc, "Tooltip for " + doc.Text)

{% endhighlight %}

![](Interactive-Features_images/Interactive-Features_img1.jpeg)



{% seealso %}

[Context Menu](/windowsforms/tabbedmdi/interactive-features#context-menu)

{% endseealso %}



## Context Menu

The TabbedMDI Layout mode enables the default Context Menu that pops-up whenever the user right clicks on any of the tabs. 

The ContextMenuItem property is used to select the context menu that should be used along with the default tab context menu when the user right-clicks on a tab.

Below image will reproduce the Context Menu feature available in an MDI application in TabbedMDI mode.

![](Interactive-Features_images/Interactive-Features_img2.jpeg)



## Customize Context Menu

On right clicking the tabs in the TabbedMDI layout, a default context menu will appear. This context menu can be customized programmatically, to add custom bar items.

* Create a TabbedMDI Layout.
* Add the below code snippets in the respective places as directed.
* The below given code will add two bar items to the default context menu. The same is shown in the image below.

{% highlight c# %}



//Add Namespace

using Syncfusion.Windows.Forms.Tools.XPMenus;



// Append menus to the standard MDI tab context menu.

//Adding Bar Item 1

ParentBarItem contextMenuItem = new ParentBarItem();

BarItem newDocItem = new BarItem();

newDocItem.ImageIndex = 5;

newDocItem.Text = "Custom Item: Insert New Doc";

newDocItem.MergeOrder = 30;

contextMenuItem.Items.Add(newDocItem);



//Adding Bar Item 2 

BarItem exitItem = new BarItem();

exitItem.ImageIndex = 2;

exitItem.Text = "CustomItem: Exit";

exitItem.MergeOrder = 30;

contextMenuItem.Items.Add(exitItem);

contextMenuItem.BeginGroupAt(newDocItem);

// Items in this Parent Bar Item will be merged with the standard context menu Parent Bar Item of the MDI tab.

tb.ContextMenuItem = contextMenuItem;

{% endhighlight %}

{% highlight vbnet %}



' Add Namespace

Imports Syncfusion.Windows.Forms.Tools.XPMenus



' Append menus to the standard MDI tab context menu.

Dim contextMenuItem As ParentBarItem

contextMenuItem = New ParentBarItem()



' Bar Item 1

Dim newDocItem As BarItem

newDocItem = New BarItem()

newDocItem.Text = "Custom Item: Insert New Doc"

newDocItem.MergeOrder = 30

contextMenuItem.Items.Add(newDocItem)



' Bar Item 2

Dim exitItem As BarItem

exitItem = New BarItem()

exitItem.Text = "CustomItem: Exit"

exitItem.MergeOrder = 30

contextMenuItem.Items.Add(exitItem)

contextMenuItem.BeginGroupAt(newDocItem)

' Items in this Parent Bar Item will be merged with the standard context menu Parent Bar Item of the MDI tab.

tabbedMDIManager.ContextMenuItem = contextMenuItem

{% endhighlight %}

![](Interactive-Features_images/Interactive-Features_img3.jpeg)



![](Interactive-Features_images/Interactive-Features_img4.jpeg)


{% seealso %}

[How to remove the Context Menu for a particular tab](/windowsforms/tabbedmdi/faq/how-to-remove-the-context-menu-for-a-particular-tab)

{% endseealso %}





---
layout: post
title: Adding-and-Filling-the-XPToolbar
description: adding and filling the xptoolbar
platform: windowsforms
control: XPToolbar
documentation: ug
---

# Adding and Filling the XPToolbar

Adding XPToolBar to XPMenus

Drag and drop an XPToolbar control onto the form. 

## Supported BarItem types

The various types of BarItems supported by XPToolBar are:

* BarItem
* ParentBarItem
* DropDownBarItem
* ComboBoxBarItem
* StaticBarItem 
* TextBoxBarItem
* ListBarItem
* MDIListBarItem
* ToolbarListBarItem

## Filling the XP Toolbar with Items from the BarManager

You can drag-and-drop items from the Customize dialog of the BarManager into the XP Toolbar, in the same way you filled the menus and toolbars.

![](Adding-and-Filling-the-XPToolbar_images/Adding-and-Filling-the-XPToolbar_img1.jpeg)




In the presence of a BarManager, you can also add separators to the items by right-clicking on the items and selecting the Begin A Group option similar to Menus. See Grouping Bar Items.

Filling the XP ToolBar through the BarItems Collection Editor

During design-time, in the absence of BarManager, the XP Toolbar can be filled through the BarItems collection editor, which is invoked using Items property. In the collection editor, you can add any of the available BarItem types to the XP Toolbar's list. A customized text can be provided for the BarItems using Text property.

_Table_ _505_: -Property Table_

<table>
<tr>
<th>
XPToolBar Property</th><th>
Description</th></tr>
<tr>
<td>
Items</td><td>
Indicates bar items collections.</td></tr>
</table>


![](Adding-and-Filling-the-XPToolbar_images/Adding-and-Filling-the-XPToolbar_img2.jpeg)



![](Adding-and-Filling-the-XPToolbar_images/Adding-and-Filling-the-XPToolbar_img3.jpeg)





N> This control is not normally used to create toolbars in the XP Menus. This is meant to be used within the form as a stand-alone control.



{% highlight c# %}

this.barItem10.Text = "XPMenus";

this.parentBarItem2.Text = "ParentBarItem";                  


{% endhighlight  %}
{% highlight vbnet %}




Me.barItem10.Text = "XPMenus"

Me.parentBarItem2.Text = "ParentBarItem"
{% endhighlight  %}

### Adding Separators

In the absence of a BarManager, you can add separators to the items by editing the XPToolBar.SeparatorIndices property list.

_Table_ _506_: _Property Table_

<table>
<tr>
<th>
XPToolBar Property</th><th>
Description</th></tr>
<tr>
<td>
SeparatorIndices</td><td>
Specifies the Indices values after which the separator have to be placed in an XPToolbar.</td></tr>
</table>




{% highlight c# %}

this.xpToolBar1.SeparatorIndices.AddRange(new int[] {1, 2});       



{% endhighlight  %}
{% highlight vbnet %}



Me.xpToolBar1.SeparatorIndices.AddRange(New Integer() {1, 2}) 

{% endhighlight  %}


![](Adding-and-Filling-the-XPToolbar_images/Adding-and-Filling-the-XPToolbar_img5.jpeg)



The XPToolbars sample in the following installation path, shows how an XP toolbar can be used in an application.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

{% seealso %}
XPToolbar Properties

{% endseealso %}



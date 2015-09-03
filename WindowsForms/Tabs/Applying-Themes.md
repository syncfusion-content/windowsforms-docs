---
layout: post
title: Applying-Themes
description: applying themes
platform: WindowsForms
control: TabsPackage 
documentation: ug
---

# Applying Themes

The TabControlAdv can be themed by enabling the ThemesEnabled property.

N> On setting this property, all the tabpages will be themed. This can be disabled or enabled for individual pages using the TabPageAdv.ThemesEnabled property.

{% highlight c# %}

this.tabControlAdv1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vbnet %}

Me.tabControlAdv1.ThemesEnabled = True

{% endhighlight %}

![](Applying-Themes_images/Applying-Themes_img2.jpeg)



## Interactive Features

This section discusses the CloseButton features of TabControlAdv.

It includes the below topics

### CloseButton Settings

TabControl can have CloseButtons for all the TabPages as in Internet Explorer 7 to close the corresponding TabPages irrespective of the Style set.

![](Applying-Themes_images/Applying-Themes_img3.jpeg)



Close Button on all the TabItems can be made visible by setting the ShowTabCloseButton property to True.

{% highlight c# %}

this.tabControlAdv1.ShowTabCloseButton = true;

{% endhighlight %}

{% highlight vbnet %}

Me.tabControlAdv1.ShowTabCloseButton = True

{% endhighlight %}

Also the Tab Close Button can be restricted to be shown only for Active TabPages. This can be done by setting the ShowCloseButtonForActiveTabOnly property to True.

{% highlight c# %}

this.tabControlAdv1.ShowCloseButtonForActiveTabOnly = true;

{% endhighlight %}

{% highlight vbnet %}

Me.tabControlAdv1.ShowCloseButtonForActiveTabOnly = True

{% endhighlight %}

![](Applying-Themes_images/Applying-Themes_img4.jpeg)



N> Close Button can be set for the whole TabControlAdv by using_ TabPrimitives_.

### ToolTip Support

ToolTips for the TabControlAdv can be enabled using the ShowToolTip property and the tooltip text for the tabpages can be specified using the ToolTipText property of individual pages which allows to provide a unique tip for each page.

{% highlight c# %}

this.tabControlAdv1.ShowToolTips = true;

this.tabPageAdv1.ToolTipText = "Tooltips for tab page 1";

{% endhighlight %}

{% highlight vbnet %}

Me.tabControlAdv1.ShowToolTips = True

Me.tabPageAdv1.ToolTipText = "Tooltips for tab page 1"

{% endhighlight %}


![](Applying-Themes_images/Applying-Themes_img6.jpeg)


SuperTooltip Support

TabControlAdv can now display supertooltip on the tabs when mouse hovered on the tabs.

{% highlight c# %}

this.tabControlAdv1.ShowSuperToolTips  = true;

this.tabPageAdv1.SuperToolTips  = true;

{% endhighlight %}

{% highlight vbnet %}


Me.tabControlAdv1.ShowSuperToolTips  = True

Me.tabPageAdv1.SuperToolTips  = True

{% endhighlight %}

## Advanced Settings

This section discusses the Advanced Settings of TabControlAdv that enhances the appearance and usage of the control.

It includes the below topics.

## Persistence Support

The PersistTabState property specifies the value which determines whether the TabState (ActivePage, TabOrder and Text) should be automatically persisted or not. The default value is set to False.

_Table_ _834_: Property Table_

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
PersistTabState</td><td>
Gets / sets the value which determines whether the TabState should be automatically persisted or not.</td></tr>
</table>

_Table_ _824_:Methods Table

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
TabControlAdv.SaveState()</td><td>
Persists the TabState (ActivePage, TabOrder and Text).</td></tr>
<tr>
<td>
TabControlAdv.LoadState()</td><td>
Gets / sets the previously serialized TabState using the AppStateSerializer object. </td></tr>
</table>

## RTL Support

### RightToLeft

Tabs framework allows the tabitems in the TabControlAdv to be drawn from right to left. This can be done by setting the RightToLeft property to Yes.

This property aligns the tabs and the text from right to left which proves to be helpful for the Right-To-Left languages.

_Table_ _836_: Property Table_

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
RightToLeft</td><td>
Specifies to draw the tabs and the text from right to left. The default value is No.</td></tr>
</table>
![](Applying-Themes_images/Applying-Themes_img7.jpeg)



### Rotating Tabs

RotateTabsWhenRTL property can be used to rotate the tabs of the tabcontroladv that are aligned to the left and right of the tabpages. This specifies whether a tab should be drawn from left to right or from right to left. The default value is False.

When the RightToLeft mode is activated and RotateTabsWhenRTLproperty is enabled, tab rotation is allowed.

_Table_ _837_: Property Table

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
RotateTabsWhenRTL</td><td>
Gets / sets the value that decides whether the tabs can be rotated, when the RightToLeft mode is activated.</td></tr>
</table>


![](Applying-Themes_images/Applying-Themes_img8.jpeg)



{% highlight c# %}



this.tabControlAdv1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

this.tabControlAdv1.RotateTabsWhenRTL = true;

{% endhighlight %}

{% highlight vbnet %}



Me.tabControlAdv1.RightToLeft = System.Windows.Forms.RightToLeft.Yes

Me.tabControlAdv1.RotateTabsWhenRTL = True

{% endhighlight %}

N> Only VS2005Style, OneNoteStyle and DockingWhidbeyStyle support RotateTabsWhenRTL property.

### Rotating Text

RotateTextWhenVertical property can be used to rotate the text of the tabitems that are aligned to the left and right of the pages. This displays the tabs horizontally and provides better user readability by displaying the tabitems' text in a horizontal fashion.

_Table_ _838_: Property Table

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
RotateTextWhenVertical</td><td>
Specifies to rotate the text along with the tab to draw the text horizontally.</td></tr>
</table>


![](Applying-Themes_images/Applying-Themes_img10.jpeg)



{% highlight c# %}

this.tabControlAdv1.RotateTextWhenVertical = true;

{% endhighlight %}

{% highlight vbnet %}

Me.tabControlAdv1.RotateTextWhenVertical = True

{% endhighlight %}

#### Scroll Settings

This section discusses about the Scrolling Properties available for the TabControlAdv.

ScrollButton

TabControlAdv has the ability to add scrollbuttons on the TabPanel when the number of Tab items increase. These scrollbuttons allow the user to navigate through the tabpages in the front and back. For this, the ShowScroll property of the TabControl must be set.

_Table_ _839_: Property Table_

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
ShowScroll</td><td>
Specifies whether to show the scrollbutton.</td></tr>
</table>


By default, scrollbuttons are set to 2D, 3D and Workbook tabstyles.

![](Applying-Themes_images/Applying-Themes_img11.png)



For all other styles, scrollbuttons are set to normal button-look.

![](Applying-Themes_images/Applying-Themes_img12.png)

{% highlight c# %}

ScrollButtons can have a VS .NET - TabbedMDI scrollbutton-look, when the VSLikeScrollButton property is set to true.

this.tabControlAdv1.ShowScroll = true;

this.tabControlAdv1.VSLikeScrollButton = true;

{% endhighlight %}

{% highlight vbnet %}



Me.tabControlAdv1.ShowScroll = True

Me.tabControlAdv1.VSLikeScrollButton = True

{% endhighlight %}

### ScrollBars

ScrollBars can be set for the tabpages for which the AutoScroll property has to be set to true. The AutoScrollMinSize is set to a value, which if exceeded, enables the tabcontroladv to automatically add a scrollbar to the tabpage. Setting AutoScrollMargin, allows to maintain a minimum distance between the end margin of any control that is placed and the margin of the tabpage.

ScrollIncrement property is used to specify whether to scroll through tabs or pages.

_Table_ _840_: Property Table

<table>
<tr>
<th>
TabPageAdv Property</th><th>
Description</th></tr>
<tr>
<td>
AutoScroll</td><td>
Specifies to add a scrollbar to the tabpage. Default value is False.</td></tr>
<tr>
<td>
AutoScrollMargin</td><td>
Specifies the distance to be maintained between any control that is placed inside the page and the tabmargin.</td></tr>
<tr>
<td>
AutoScrollMinSize</td><td>
Specifies the size of the tabpage, which if exceeded, would  enable scrollbars to be added.</td></tr>
</table>


![](Applying-Themes_images/Applying-Themes_img13.png)



N> The TabControlAdv.BringSelectedTabToView() method is used to bring the selected tab to view, if scrolled out of view.

{% highlight c# %}



this.tabPageAdv1.AutoScroll = true;

this.tabPageAdv1.AutoScrollMargin = new System.Drawing.Size(20, 20);

this.tabPageAdv1.AutoScrollMinSize = new System.Drawing.Size(50, 50);

this.tabControlAdv1.ScrollIncrement = Syncfusion.Windows.Forms.Tools.ScrollIncrement.Page;

{% endhighlight %}

{% highlight vbnet %}



Private Me.tabPageAdv1.AutoScroll = True

Private Me.tabPageAdv1.AutoScrollMargin = New System.Drawing.Size(20, 20)

Private Me.tabPageAdv1.AutoScrollMinSize = New System.Drawing.Size(50, 50)

Private Me.tabControlAdv1.ScrollIncrement = Syncfusion.Windows.Forms.Tools.ScrollIncrement.Page

{% endhighlight %}


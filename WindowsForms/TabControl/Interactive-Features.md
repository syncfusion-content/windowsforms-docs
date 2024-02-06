---
layout: post
title: Interactive Features in Windows Forms TabControl control | Syncfusion
description: Learn about Interactive Features support in Syncfusion Windows Forms TabControl (TabControlAdv) control and more details.
platform: WindowsForms
control: TabControlAdv 
documentation: ug
---

# Interactive Features in Windows Forms TabControl (TabControlAdv)

## CloseButton settings

[TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) has CloseButtons for all the [TabPages]([TabPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_TabPages)) to close the corresponding [TabPages]([TabPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_TabPages)) irrespective of the Style set.

![Tabs with close button](Interactive-Features_images/Interactive-Features_img3.jpeg)

Close button on all the TabItems can be made visible by setting the [ShowTabCloseButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ShowTabCloseButton) property to`true`.

{% tabs %}

{% highlight C# %}

this.tabControlAdv1.ShowTabCloseButton = true;

{% endhighlight %}

{% highlight VB %}

Me.tabControlAdv1.ShowTabCloseButton = True

{% endhighlight %}

{% endtabs %}

Also the Tab Close button can be restricted to be shown only for ActiveTabPage. This can be done by setting the [ShowCloseButtonForActiveTabOnly](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ShowCloseButtonForActiveTabOnly) property to `true`.

{% tabs %}

{% highlight C# %}

this.tabControlAdv1.ShowCloseButtonForActiveTabOnly = true;

{% endhighlight %}

{% highlight VB %}

Me.tabControlAdv1.ShowCloseButtonForActiveTabOnly = True

{% endhighlight %}

{% endtabs %}

![Active tab has close button](Interactive-Features_images/Interactive-Features_img4.jpeg)

### Closing tab items using mouse middle click

You can close the tab items of `TabControl` by clicking the mouse middle button on the tab item header. You can enable it by using the [CloseTabOnMiddleClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_CloseTabOnMiddleClick) property value as `true`. The default value of  `CloseTabOnMiddleClick` is `false`.

{% tabs %}
{% highlight C# %}

this.tabControlAdv1.CloseTabOnMiddleClick = true;

{% endhighlight %}
{% highlight VB %}

Me.tabControlAdv1.CloseTabOnMiddleClick = true

{% endhighlight %}
{% endtabs %}

N> Close Button can be set for the whole [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) by using [Tab Navigation](/windowsforms/tabcontroladv/tab-navigation).

## Tooltip support

Tooltip for the [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) can be enabled using the [ShowToolTips](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ShowToolTips) property and the tooltip text for the TabPages can be specified using the [ToolTipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabPageAdv.html#Syncfusion_Windows_Forms_Tools_TabPageAdv_ToolTipText) property of individual pages which allows to provide a unique Tooltip for each page.

{% tabs %}

{% highlight C# %}

this.tabControlAdv1.ShowToolTips = true;

this.tabPageAdv1.ToolTipText = "Tooltips for tab page 1";

{% endhighlight %}

{% highlight VB %}

Me.tabControlAdv1.ShowToolTips = True

Me.tabPageAdv1.ToolTipText = "Tooltips for tab page 1"

{% endhighlight %}

{% endtabs %}

![Tooltip support](Interactive-Features_images/Interactive-Features_img6.jpeg)


## SuperTooltip support

Now, the [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) displays [SuperToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabPageAdv.html#Syncfusion_Windows_Forms_Tools_TabPageAdv_SuperTooltip) on the Tabs when hovering the mouse.

{% tabs %}

{% highlight C# %}

this.tabControlAdv1.ShowSuperToolTips  = true;

this.tabPageAdv1.SuperToolTips  = true;

{% endhighlight %}

{% highlight VB %}


Me.tabControlAdv1.ShowSuperToolTips  = True

Me.tabPageAdv1.SuperToolTips  = True

{% endhighlight %}

{% endtabs %}


## Scroll settings

This section discusses about the Scrolling properties available in the [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html).

### ScrollButton

TabControlAdv has the ability to add ScrollButtons on the TabPanel when the number of tab items increase. These ScrollButtons allows the user to navigate through the TabPages in the front and back. For this, the [ShowScroll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ShowScroll) property of the [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) must be set.

ScrollButtons can have a VS like scroll button-look and normal button look.

For VS like scroll button-look, the [VSLikeScrollButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_VSLikeScrollButton) property has to be set to `true`.

![Tab scroll option](Interactive-Features_images/Interactive-Features_img11.png)

![Tab scroll support](Interactive-Features_images/Interactive-Features_img12.png)


{% tabs %}

{% highlight C# %}

this.tabControlAdv1.ShowScroll = true;

this.tabControlAdv1.VSLikeScrollButton = true;

{% endhighlight %}

{% highlight VB %}

Me.tabControlAdv1.ShowScroll = True

Me.tabControlAdv1.VSLikeScrollButton = True

{% endhighlight %}

{% endtabs %}

### ScrollBars

ScrollBars can be set for the TabPages for which the [AutoScroll](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.scrollablecontrol.autoscroll?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ScrollableControl_AutoScroll) property has to be set to `true`. The [AutoScrollMinSize](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.scrollablecontrol.autoscrollminsize?view=netframework-4.7.2) is set to a value, which if exceeded, enables the [TabControlAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) to automatically add a scrollbar to the TabPage. Setting [AutoScrollMargin](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.scrollablecontrol.autoscrollmargin?view=netframework-4.7.2), allows to maintain a minimum distance between the end margin of any control that is placed inside the TabPage and the margin of the TabPage.

[ScrollIncrement](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_ScrollIncrement) property is used to specify whether to scroll through Tabs or Pages.

![Tab scroll bar support](Interactive-Features_images/Interactive-Features_img13.png)


N> The [TabControlAdv.BringSelectedTabToView](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_BringSelectedTabToView) method is used to bring the selected Tab to view, if scrolled out of view.

{% tabs %}

{% highlight C# %}

this.tabPageAdv1.AutoScroll = true;

this.tabPageAdv1.AutoScrollMargin = new System.Drawing.Size(20, 20);

this.tabPageAdv1.AutoScrollMinSize = new System.Drawing.Size(50, 50);

this.tabControlAdv1.ScrollIncrement = Syncfusion.Windows.Forms.Tools.ScrollIncrement.Page;

this.tabControlAdv1.BringSelectedTabToView();

{% endhighlight %}

{% highlight VB %}

Private Me.tabPageAdv1.AutoScroll = True

Private Me.tabPageAdv1.AutoScrollMargin = New System.Drawing.Size(20, 20)

Private Me.tabPageAdv1.AutoScrollMinSize = New System.Drawing.Size(50, 50)

Private Me.tabControlAdv1.ScrollIncrement = Syncfusion.Windows.Forms.Tools.ScrollIncrement.Page

Private Me.tabPageAdv1.BringSelectedTabToView()

{% endhighlight %}

{% endtabs %}


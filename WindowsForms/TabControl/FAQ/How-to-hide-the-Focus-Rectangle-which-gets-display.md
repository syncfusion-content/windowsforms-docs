---
layout: post
title: Hide the focus rectangle | WindowsForms | Syncfusion®
description: Learn how to hide the focus rectangle which gets displayed on the selected tab in Syncfusion Windows Forms TabControlAdv using the FocusOnTabClick property.
platform: windowsforms
control: TabsPackage
documentation: ug
---

# How to hide the focus rectangle in selected tab in TabControl?

The focus rectangle can be hidden by setting the [FocusOnTabClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_FocusOnTabClick) property to `false`. This can be done programmatically using the code snippet given below.

{% tabs %}

{% highlight C# %}

this.tabControlAdv1.FocusOnTabClick = false;

{% endhighlight %}

{% highlight VB %}

Me.tabControlAdv1.FocusOnTabClick = False

{% endhighlight %}

{% endtabs %}

N> The [TabControlAdv.GetTabRect](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html#Syncfusion_Windows_Forms_Tools_TabControlAdv_GetTabRect_System_Int32_) method is used to get the Rectangle region of a Tab in client co-ordinates, given it's TabIndex.


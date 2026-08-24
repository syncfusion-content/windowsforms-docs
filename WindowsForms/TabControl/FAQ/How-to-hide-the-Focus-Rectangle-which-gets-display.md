---
layout: post
title: How to Hide Focus Rectangle in TabControlAdv | Syncfusion®
description: Learn how to hide the focus rectangle in the selected tab in Syncfusion Windows Forms TabControlAdv control, its elements and more details.
platform: windowsforms
control: TabsPackage
documentation: ug
---

# How to Hide Focus Rectangle in TabControlAdv

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


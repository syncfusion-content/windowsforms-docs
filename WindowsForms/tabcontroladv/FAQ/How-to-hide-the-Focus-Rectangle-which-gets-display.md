---
layout: post
title: Hide the focus rectangle | WindowsForms | Syncfusion
description: how to hide the focus rectangle which gets displayed on the selected tab
platform: WindowsForms
control: TabsPackage
documentation: ug
---

# How to hide the focus rectangle which gets displayed on the selected tab?

The focus rectangle can be hidden by setting the [FocusOnTabClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv~FocusOnTabClick.html) property to `false`. This can be done programmatically using the code snippet given below.

{% tabs %}

{% highlight C# %}

this.tabControlAdv1.FocusOnTabClick = false;

{% endhighlight %}

{% highlight VB %}

Me.tabControlAdv1.FocusOnTabClick = False

{% endhighlight %}

{% endtabs %}

N> The [TabControlAdv.GetTabRect](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabControlAdv~GetTabRect.html) method is used to get the Rectangle region of a Tab in client co-ordinates, given it's TabIndex.

